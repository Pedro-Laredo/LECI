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

-- DATE "06/03/2024 06:10:23"

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

ENTITY 	FSM_DM IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(2 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END FSM_DM;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM_DM IS
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
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \debouncer_enable_inst|filtered_signal~feeder_combout\ : std_logic;
SIGNAL \debouncer_enable_inst|filtered_signal~q\ : std_logic;
SIGNAL \debouncer_enable_inst|filtered_sync~feeder_combout\ : std_logic;
SIGNAL \debouncer_enable_inst|filtered_sync~q\ : std_logic;
SIGNAL \debouncer_enable_inst|dff_input~feeder_combout\ : std_logic;
SIGNAL \debouncer_enable_inst|dff_input~q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \debouncer_start_cooking_inst|filtered_signal~feeder_combout\ : std_logic;
SIGNAL \debouncer_start_cooking_inst|filtered_signal~q\ : std_logic;
SIGNAL \debouncer_start_cooking_inst|filtered_sync~q\ : std_logic;
SIGNAL \debouncer_start_cooking_inst|dff_input~q\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[0]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~9_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Equal4~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \debouncer_abrir_forno_inst|filtered_signal~feeder_combout\ : std_logic;
SIGNAL \debouncer_abrir_forno_inst|filtered_signal~q\ : std_logic;
SIGNAL \debouncer_abrir_forno_inst|filtered_sync~feeder_combout\ : std_logic;
SIGNAL \debouncer_abrir_forno_inst|filtered_sync~q\ : std_logic;
SIGNAL \debouncer_abrir_forno_inst|dff_input~q\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector5~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~24_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~12_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~13_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~15_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~22_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState.PREHEAT~q\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~10_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Equal4~1_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~11_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~16_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState.COOK~q\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector4~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector7~2_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Carregar_Tempo~4_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Carregar_Tempo~3_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Carregar_Tempo~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~1\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~3\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~5\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~6_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~7\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~8_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~9\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~10_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~11\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~12_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~13\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~14_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~5_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~15\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~16_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~17\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~18_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~19\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~20_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~21\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~22_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~23\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~24_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~25\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~26_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~3_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~27\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~28_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~29\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~30_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~31\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~32_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~33\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~34_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~35\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~36_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~37\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~38_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~6_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~39\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~40_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~7_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~41\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~42_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~8_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~43\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~44_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~9_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~45\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~46_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~10_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~47\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~48_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~49\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Add0~50_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt~11_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~7_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~5_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~6_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~3_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|Equal0~8_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|pulse~feeder_combout\ : std_logic;
SIGNAL \TimeModule_inst|PulseGen_inst|pulse~q\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector15~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_Time_Status~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue~7_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[0]~6\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[1]~8_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Equal4~2_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector6~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector6~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[1]~9\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[2]~10_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector5~1_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector5~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[2]~11\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[3]~12_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[3]~13\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue[4]~14_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|process_1~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector12~1_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector3~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector3~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|Equal0~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|Equal0~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_Time_Status~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_Time_Status~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_Time_Status~q\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~20_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~21_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState.FINISH~q\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~14_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~18_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~17_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~19_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState.IDLE~q\ : std_logic;
SIGNAL \Airfryer_FSM_inst|luz_vermelha[0]~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|luz_vermelha[0]~1_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|luz_vermelha[1]~2_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState~23_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|s_currentState.COOL~q\ : std_logic;
SIGNAL \Airfryer_FSM_inst|luz_vermelha[2]~3_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|luz_verde[0]~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|luz_verde[0]~1_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|luz_verde[1]~2_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|luz_verde[1]~3_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector9~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector10~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector13~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector9~1_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector9~2_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector10~1_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector14~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector11~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector12~0_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector12~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~43_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~38_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~39_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~40_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~44_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~45_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~46_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~47_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~48_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~54_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~55_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~56_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~57_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|Selector14~1_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~13_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~3_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~15_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~17_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~19_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~23_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[49]~24_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~48_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~33_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~34_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~37_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~35_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~52_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~36_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~37_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~38_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~38_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~56_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~43_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~60_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~44_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~45_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~61_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~62_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~46_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~32_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~31_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~40_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~63_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~33_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~47_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex1_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~3_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex2_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~1_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[6]~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex4_decoder|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex4_decoder|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex4_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex4_decoder|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex4_decoder|decOut_n[4]~3_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex4_decoder|decOut_n[5]~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex4_decoder|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex5_decoder|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex5_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex5_decoder|decOut_n[4]~1_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex5_decoder|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex5_decoder|decOut_n[6]~3_combout\ : std_logic;
SIGNAL \TimeModule_inst|Counter_inst|s_cntValue\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \TimeModule_inst|PulseGen_inst|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[3]~2_combout\ : std_logic;
SIGNAL \TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[4]~1_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[3]~3_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex0_decoder|ALT_INV_decOut_n[6]~3_combout\ : std_logic;
SIGNAL \Dividir_Temperatura_inst|Hex0_decoder|ALT_INV_decOut_n[3]~2_combout\ : std_logic;
SIGNAL \Airfryer_FSM_inst|ALT_INV_luz_vermelha[2]~3_combout\ : std_logic;
SIGNAL \debouncer_enable_inst|ALT_INV_dff_input~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[3]~2_combout\ <= NOT \TimeModule_inst|Hex5_decoder|decOut_n[3]~2_combout\;
\TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[4]~1_combout\ <= NOT \TimeModule_inst|Hex5_decoder|decOut_n[4]~1_combout\;
\Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[3]~3_combout\ <= NOT \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[3]~3_combout\;
\Dividir_Temperatura_inst|Hex0_decoder|ALT_INV_decOut_n[6]~3_combout\ <= NOT \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~3_combout\;
\Dividir_Temperatura_inst|Hex0_decoder|ALT_INV_decOut_n[3]~2_combout\ <= NOT \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~2_combout\;
\Airfryer_FSM_inst|ALT_INV_luz_vermelha[2]~3_combout\ <= NOT \Airfryer_FSM_inst|luz_vermelha[2]~3_combout\;
\debouncer_enable_inst|ALT_INV_dff_input~q\ <= NOT \debouncer_enable_inst|dff_input~q\;
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
	i => \Airfryer_FSM_inst|luz_vermelha[0]~1_combout\,
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
	i => \Airfryer_FSM_inst|luz_vermelha[1]~2_combout\,
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
	i => \Airfryer_FSM_inst|ALT_INV_luz_vermelha[2]~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Airfryer_FSM_inst|luz_verde[0]~1_combout\,
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
	i => \Airfryer_FSM_inst|luz_verde[1]~3_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~0_combout\,
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
	i => \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~1_combout\,
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
	i => \Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\,
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
	i => \Dividir_Temperatura_inst|Hex0_decoder|ALT_INV_decOut_n[3]~2_combout\,
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
	i => \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~0_combout\,
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
	i => \Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\,
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
	i => \Dividir_Temperatura_inst|Hex0_decoder|ALT_INV_decOut_n[6]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex1_decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

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

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex2_decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[6]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex4_decoder|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex4_decoder|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex4_decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex4_decoder|decOut_n[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex4_decoder|decOut_n[4]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex4_decoder|decOut_n[5]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex4_decoder|decOut_n[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex5_decoder|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

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

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex5_decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex5_decoder|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeModule_inst|Hex5_decoder|decOut_n[6]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

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

-- Location: LCCOMB_X111_Y17_N28
\debouncer_enable_inst|filtered_signal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_enable_inst|filtered_signal~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \debouncer_enable_inst|filtered_signal~feeder_combout\);

-- Location: FF_X111_Y17_N29
\debouncer_enable_inst|filtered_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer_enable_inst|filtered_signal~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_enable_inst|filtered_signal~q\);

-- Location: LCCOMB_X111_Y17_N4
\debouncer_enable_inst|filtered_sync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_enable_inst|filtered_sync~feeder_combout\ = \debouncer_enable_inst|filtered_signal~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debouncer_enable_inst|filtered_signal~q\,
	combout => \debouncer_enable_inst|filtered_sync~feeder_combout\);

-- Location: FF_X111_Y17_N5
\debouncer_enable_inst|filtered_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer_enable_inst|filtered_sync~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_enable_inst|filtered_sync~q\);

-- Location: LCCOMB_X111_Y20_N12
\debouncer_enable_inst|dff_input~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_enable_inst|dff_input~feeder_combout\ = \debouncer_enable_inst|filtered_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debouncer_enable_inst|filtered_sync~q\,
	combout => \debouncer_enable_inst|dff_input~feeder_combout\);

-- Location: FF_X111_Y20_N13
\debouncer_enable_inst|dff_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer_enable_inst|dff_input~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_enable_inst|dff_input~q\);

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

-- Location: LCCOMB_X111_Y17_N2
\debouncer_start_cooking_inst|filtered_signal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_start_cooking_inst|filtered_signal~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \debouncer_start_cooking_inst|filtered_signal~feeder_combout\);

-- Location: FF_X111_Y17_N3
\debouncer_start_cooking_inst|filtered_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer_start_cooking_inst|filtered_signal~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_start_cooking_inst|filtered_signal~q\);

-- Location: FF_X107_Y17_N13
\debouncer_start_cooking_inst|filtered_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer_start_cooking_inst|filtered_signal~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_start_cooking_inst|filtered_sync~q\);

-- Location: FF_X107_Y20_N25
\debouncer_start_cooking_inst|dff_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer_start_cooking_inst|filtered_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_start_cooking_inst|dff_input~q\);

-- Location: LCCOMB_X106_Y20_N10
\TimeModule_inst|Counter_inst|s_cntValue[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_cntValue[0]~5_combout\ = \TimeModule_inst|Counter_inst|s_cntValue\(0) $ (VCC)
-- \TimeModule_inst|Counter_inst|s_cntValue[0]~6\ = CARRY(\TimeModule_inst|Counter_inst|s_cntValue\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => VCC,
	combout => \TimeModule_inst|Counter_inst|s_cntValue[0]~5_combout\,
	cout => \TimeModule_inst|Counter_inst|s_cntValue[0]~6\);

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

-- Location: LCCOMB_X109_Y20_N28
\Airfryer_FSM_inst|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~9_combout\ = (\SW[4]~input_o\ & (\SW[6]~input_o\)) # (!\SW[4]~input_o\ & ((!\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|s_currentState~9_combout\);

-- Location: LCCOMB_X109_Y20_N4
\Airfryer_FSM_inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Equal4~0_combout\ = (\SW[5]~input_o\ & !\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|Equal4~0_combout\);

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

-- Location: LCCOMB_X111_Y17_N12
\debouncer_abrir_forno_inst|filtered_signal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_abrir_forno_inst|filtered_signal~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \debouncer_abrir_forno_inst|filtered_signal~feeder_combout\);

-- Location: FF_X111_Y17_N13
\debouncer_abrir_forno_inst|filtered_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer_abrir_forno_inst|filtered_signal~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_abrir_forno_inst|filtered_signal~q\);

-- Location: LCCOMB_X111_Y17_N30
\debouncer_abrir_forno_inst|filtered_sync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_abrir_forno_inst|filtered_sync~feeder_combout\ = \debouncer_abrir_forno_inst|filtered_signal~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debouncer_abrir_forno_inst|filtered_signal~q\,
	combout => \debouncer_abrir_forno_inst|filtered_sync~feeder_combout\);

-- Location: FF_X111_Y17_N31
\debouncer_abrir_forno_inst|filtered_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer_abrir_forno_inst|filtered_sync~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_abrir_forno_inst|filtered_sync~q\);

-- Location: FF_X107_Y20_N15
\debouncer_abrir_forno_inst|dff_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer_abrir_forno_inst|filtered_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_abrir_forno_inst|dff_input~q\);

-- Location: LCCOMB_X107_Y20_N28
\Airfryer_FSM_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector5~0_combout\ = (!\Airfryer_FSM_inst|s_currentState.IDLE~q\ & \debouncer_start_cooking_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datad => \debouncer_start_cooking_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|Selector5~0_combout\);

-- Location: LCCOMB_X108_Y20_N10
\Airfryer_FSM_inst|s_currentState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~24_combout\ = (\Airfryer_FSM_inst|Selector5~0_combout\ & ((\SW[4]~input_o\ & ((!\SW[6]~input_o\))) # (!\SW[4]~input_o\ & (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \Airfryer_FSM_inst|Selector5~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|s_currentState~24_combout\);

-- Location: LCCOMB_X109_Y20_N6
\Airfryer_FSM_inst|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~12_combout\ = (!\Airfryer_FSM_inst|s_currentState.IDLE~q\ & (((\SW[5]~input_o\ & !\SW[4]~input_o\)) # (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|s_currentState~12_combout\);

-- Location: LCCOMB_X108_Y20_N16
\Airfryer_FSM_inst|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~13_combout\ = (\Airfryer_FSM_inst|s_currentState.COOK~q\ & (\TimeModule_inst|Counter_inst|s_Time_Status~q\ & !\Airfryer_FSM_inst|s_currentState.FINISH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \Airfryer_FSM_inst|s_currentState~13_combout\);

-- Location: LCCOMB_X108_Y20_N18
\Airfryer_FSM_inst|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~15_combout\ = ((\debouncer_start_cooking_inst|dff_input~q\ & ((\Airfryer_FSM_inst|s_currentState~12_combout\) # (\Airfryer_FSM_inst|s_currentState~13_combout\)))) # (!\Airfryer_FSM_inst|s_currentState~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState~12_combout\,
	datab => \Airfryer_FSM_inst|s_currentState~13_combout\,
	datac => \Airfryer_FSM_inst|s_currentState~14_combout\,
	datad => \debouncer_start_cooking_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|s_currentState~15_combout\);

-- Location: LCCOMB_X108_Y20_N24
\Airfryer_FSM_inst|s_currentState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~22_combout\ = (\debouncer_enable_inst|dff_input~q\ & ((\Airfryer_FSM_inst|s_currentState~24_combout\) # ((\Airfryer_FSM_inst|s_currentState.PREHEAT~q\ & !\Airfryer_FSM_inst|s_currentState~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState~24_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datac => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datad => \Airfryer_FSM_inst|s_currentState~15_combout\,
	combout => \Airfryer_FSM_inst|s_currentState~22_combout\);

-- Location: FF_X108_Y20_N25
\Airfryer_FSM_inst|s_currentState.PREHEAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Airfryer_FSM_inst|s_currentState~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\);

-- Location: LCCOMB_X107_Y20_N18
\Airfryer_FSM_inst|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~10_combout\ = (\TimeModule_inst|Counter_inst|s_Time_Status~q\ & (!\debouncer_start_cooking_inst|dff_input~q\ & (!\debouncer_abrir_forno_inst|dff_input~q\ & \Airfryer_FSM_inst|s_currentState.PREHEAT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datab => \debouncer_start_cooking_inst|dff_input~q\,
	datac => \debouncer_abrir_forno_inst|dff_input~q\,
	datad => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	combout => \Airfryer_FSM_inst|s_currentState~10_combout\);

-- Location: LCCOMB_X109_Y20_N0
\Airfryer_FSM_inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Equal4~1_combout\ = (!\SW[6]~input_o\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \Airfryer_FSM_inst|Equal4~1_combout\);

-- Location: LCCOMB_X108_Y20_N6
\Airfryer_FSM_inst|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~11_combout\ = (\Airfryer_FSM_inst|s_currentState~10_combout\) # ((!\SW[4]~input_o\ & (\Airfryer_FSM_inst|Equal4~1_combout\ & \Airfryer_FSM_inst|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState~10_combout\,
	datab => \SW[4]~input_o\,
	datac => \Airfryer_FSM_inst|Equal4~1_combout\,
	datad => \Airfryer_FSM_inst|Selector5~0_combout\,
	combout => \Airfryer_FSM_inst|s_currentState~11_combout\);

-- Location: LCCOMB_X108_Y20_N2
\Airfryer_FSM_inst|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~16_combout\ = (\debouncer_enable_inst|dff_input~q\ & ((\Airfryer_FSM_inst|s_currentState~15_combout\ & (\Airfryer_FSM_inst|s_currentState~11_combout\)) # (!\Airfryer_FSM_inst|s_currentState~15_combout\ & 
-- ((\Airfryer_FSM_inst|s_currentState.COOK~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState~11_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datac => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datad => \Airfryer_FSM_inst|s_currentState~15_combout\,
	combout => \Airfryer_FSM_inst|s_currentState~16_combout\);

-- Location: FF_X108_Y20_N3
\Airfryer_FSM_inst|s_currentState.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Airfryer_FSM_inst|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Airfryer_FSM_inst|s_currentState.COOK~q\);

-- Location: LCCOMB_X106_Y20_N30
\Airfryer_FSM_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector4~0_combout\ = (\Airfryer_FSM_inst|Equal4~0_combout\ & (\SW[6]~input_o\ & ((\Airfryer_FSM_inst|s_currentState.COOK~q\) # (\Airfryer_FSM_inst|s_currentState~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Equal4~0_combout\,
	datab => \SW[6]~input_o\,
	datac => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datad => \Airfryer_FSM_inst|s_currentState~10_combout\,
	combout => \Airfryer_FSM_inst|Selector4~0_combout\);

-- Location: LCCOMB_X106_Y20_N22
\Airfryer_FSM_inst|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector7~2_combout\ = (\Airfryer_FSM_inst|Selector4~0_combout\) # ((!\Airfryer_FSM_inst|s_currentState.IDLE~q\ & (!\Airfryer_FSM_inst|s_currentState~9_combout\ & \debouncer_start_cooking_inst|dff_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datab => \Airfryer_FSM_inst|s_currentState~9_combout\,
	datac => \Airfryer_FSM_inst|Selector4~0_combout\,
	datad => \debouncer_start_cooking_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|Selector7~2_combout\);

-- Location: LCCOMB_X109_Y20_N22
\Airfryer_FSM_inst|Carregar_Tempo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Carregar_Tempo~4_combout\ = ((\SW[5]~input_o\ & !\SW[4]~input_o\)) # (!\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|Carregar_Tempo~4_combout\);

-- Location: LCCOMB_X106_Y20_N20
\Airfryer_FSM_inst|Carregar_Tempo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Carregar_Tempo~3_combout\ = (\debouncer_enable_inst|dff_input~q\ & ((\Airfryer_FSM_inst|s_currentState~10_combout\) # ((\Airfryer_FSM_inst|Carregar_Tempo~4_combout\ & \Airfryer_FSM_inst|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Carregar_Tempo~4_combout\,
	datab => \Airfryer_FSM_inst|Selector5~0_combout\,
	datac => \debouncer_enable_inst|dff_input~q\,
	datad => \Airfryer_FSM_inst|s_currentState~10_combout\,
	combout => \Airfryer_FSM_inst|Carregar_Tempo~3_combout\);

-- Location: LCCOMB_X106_Y20_N24
\Airfryer_FSM_inst|Carregar_Tempo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Carregar_Tempo~2_combout\ = (!\Airfryer_FSM_inst|s_currentState~10_combout\ & (((!\Airfryer_FSM_inst|Equal4~0_combout\ & \SW[6]~input_o\)) # (!\Airfryer_FSM_inst|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Equal4~0_combout\,
	datab => \Airfryer_FSM_inst|Selector5~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \Airfryer_FSM_inst|s_currentState~10_combout\,
	combout => \Airfryer_FSM_inst|Carregar_Tempo~2_combout\);

-- Location: LCCOMB_X108_Y18_N6
\TimeModule_inst|PulseGen_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~0_combout\ = \TimeModule_inst|PulseGen_inst|s_cnt\(0) $ (VCC)
-- \TimeModule_inst|PulseGen_inst|Add0~1\ = CARRY(\TimeModule_inst|PulseGen_inst|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(0),
	datad => VCC,
	combout => \TimeModule_inst|PulseGen_inst|Add0~0_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~1\);

-- Location: FF_X108_Y18_N7
\TimeModule_inst|PulseGen_inst|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(0));

-- Location: LCCOMB_X108_Y18_N8
\TimeModule_inst|PulseGen_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~2_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(1) & (!\TimeModule_inst|PulseGen_inst|Add0~1\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(1) & ((\TimeModule_inst|PulseGen_inst|Add0~1\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~3\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~1\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(1),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~1\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~2_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~3\);

-- Location: FF_X108_Y18_N9
\TimeModule_inst|PulseGen_inst|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(1));

-- Location: LCCOMB_X108_Y18_N10
\TimeModule_inst|PulseGen_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~4_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(2) & (\TimeModule_inst|PulseGen_inst|Add0~3\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(2) & (!\TimeModule_inst|PulseGen_inst|Add0~3\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~5\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(2) & !\TimeModule_inst|PulseGen_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(2),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~3\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~4_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~5\);

-- Location: FF_X108_Y18_N11
\TimeModule_inst|PulseGen_inst|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(2));

-- Location: LCCOMB_X108_Y18_N12
\TimeModule_inst|PulseGen_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~6_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(3) & (!\TimeModule_inst|PulseGen_inst|Add0~5\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(3) & ((\TimeModule_inst|PulseGen_inst|Add0~5\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~7\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~5\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(3),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~5\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~6_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~7\);

-- Location: FF_X108_Y18_N13
\TimeModule_inst|PulseGen_inst|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(3));

-- Location: LCCOMB_X108_Y18_N14
\TimeModule_inst|PulseGen_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~8_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(4) & (\TimeModule_inst|PulseGen_inst|Add0~7\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(4) & (!\TimeModule_inst|PulseGen_inst|Add0~7\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~9\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(4) & !\TimeModule_inst|PulseGen_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(4),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~7\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~8_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~9\);

-- Location: FF_X108_Y18_N15
\TimeModule_inst|PulseGen_inst|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(4));

-- Location: LCCOMB_X108_Y18_N16
\TimeModule_inst|PulseGen_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~10_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(5) & (!\TimeModule_inst|PulseGen_inst|Add0~9\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(5) & ((\TimeModule_inst|PulseGen_inst|Add0~9\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~11\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~9\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(5),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~9\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~10_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~11\);

-- Location: FF_X108_Y18_N17
\TimeModule_inst|PulseGen_inst|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(5));

-- Location: LCCOMB_X108_Y18_N18
\TimeModule_inst|PulseGen_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~12_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(6) & (\TimeModule_inst|PulseGen_inst|Add0~11\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(6) & (!\TimeModule_inst|PulseGen_inst|Add0~11\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~13\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(6) & !\TimeModule_inst|PulseGen_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(6),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~11\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~12_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~13\);

-- Location: FF_X108_Y18_N19
\TimeModule_inst|PulseGen_inst|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(6));

-- Location: LCCOMB_X108_Y18_N20
\TimeModule_inst|PulseGen_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~14_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(7) & (!\TimeModule_inst|PulseGen_inst|Add0~13\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(7) & ((\TimeModule_inst|PulseGen_inst|Add0~13\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~15\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~13\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(7),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~13\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~14_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~15\);

-- Location: LCCOMB_X108_Y18_N0
\TimeModule_inst|PulseGen_inst|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~5_combout\ = (\TimeModule_inst|PulseGen_inst|Add0~14_combout\ & !\TimeModule_inst|PulseGen_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|Add0~14_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~5_combout\);

-- Location: FF_X108_Y18_N1
\TimeModule_inst|PulseGen_inst|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(7));

-- Location: LCCOMB_X108_Y18_N22
\TimeModule_inst|PulseGen_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~16_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(8) & (\TimeModule_inst|PulseGen_inst|Add0~15\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(8) & (!\TimeModule_inst|PulseGen_inst|Add0~15\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~17\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(8) & !\TimeModule_inst|PulseGen_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(8),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~15\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~16_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~17\);

-- Location: FF_X108_Y18_N23
\TimeModule_inst|PulseGen_inst|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(8));

-- Location: LCCOMB_X108_Y18_N24
\TimeModule_inst|PulseGen_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~18_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(9) & (!\TimeModule_inst|PulseGen_inst|Add0~17\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(9) & ((\TimeModule_inst|PulseGen_inst|Add0~17\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~19\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~17\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(9),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~17\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~18_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~19\);

-- Location: FF_X108_Y18_N25
\TimeModule_inst|PulseGen_inst|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(9));

-- Location: LCCOMB_X108_Y18_N26
\TimeModule_inst|PulseGen_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~20_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(10) & (\TimeModule_inst|PulseGen_inst|Add0~19\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(10) & (!\TimeModule_inst|PulseGen_inst|Add0~19\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~21\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(10) & !\TimeModule_inst|PulseGen_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(10),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~19\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~20_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~21\);

-- Location: FF_X108_Y18_N27
\TimeModule_inst|PulseGen_inst|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(10));

-- Location: LCCOMB_X108_Y18_N28
\TimeModule_inst|PulseGen_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~22_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(11) & (!\TimeModule_inst|PulseGen_inst|Add0~21\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(11) & ((\TimeModule_inst|PulseGen_inst|Add0~21\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~23\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~21\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(11),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~21\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~22_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~23\);

-- Location: FF_X108_Y18_N29
\TimeModule_inst|PulseGen_inst|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(11));

-- Location: LCCOMB_X108_Y18_N30
\TimeModule_inst|PulseGen_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~24_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(12) & (\TimeModule_inst|PulseGen_inst|Add0~23\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(12) & (!\TimeModule_inst|PulseGen_inst|Add0~23\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~25\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(12) & !\TimeModule_inst|PulseGen_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(12),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~23\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~24_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~25\);

-- Location: LCCOMB_X107_Y17_N4
\TimeModule_inst|PulseGen_inst|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~4_combout\ = (!\TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \TimeModule_inst|PulseGen_inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Add0~24_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~4_combout\);

-- Location: FF_X107_Y17_N5
\TimeModule_inst|PulseGen_inst|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(12));

-- Location: LCCOMB_X108_Y17_N0
\TimeModule_inst|PulseGen_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~26_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(13) & (!\TimeModule_inst|PulseGen_inst|Add0~25\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(13) & ((\TimeModule_inst|PulseGen_inst|Add0~25\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~27\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~25\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(13),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~25\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~26_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~27\);

-- Location: LCCOMB_X107_Y17_N14
\TimeModule_inst|PulseGen_inst|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~3_combout\ = (\TimeModule_inst|PulseGen_inst|Add0~26_combout\ & !\TimeModule_inst|PulseGen_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|PulseGen_inst|Add0~26_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~3_combout\);

-- Location: FF_X107_Y17_N15
\TimeModule_inst|PulseGen_inst|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(13));

-- Location: LCCOMB_X108_Y17_N2
\TimeModule_inst|PulseGen_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~28_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(14) & (\TimeModule_inst|PulseGen_inst|Add0~27\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(14) & (!\TimeModule_inst|PulseGen_inst|Add0~27\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~29\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(14) & !\TimeModule_inst|PulseGen_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(14),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~27\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~28_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~29\);

-- Location: LCCOMB_X107_Y17_N6
\TimeModule_inst|PulseGen_inst|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~2_combout\ = (!\TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \TimeModule_inst|PulseGen_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Add0~28_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~2_combout\);

-- Location: FF_X107_Y17_N7
\TimeModule_inst|PulseGen_inst|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(14));

-- Location: LCCOMB_X108_Y17_N4
\TimeModule_inst|PulseGen_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~30_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(15) & (!\TimeModule_inst|PulseGen_inst|Add0~29\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(15) & ((\TimeModule_inst|PulseGen_inst|Add0~29\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~31\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~29\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(15),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~29\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~30_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~31\);

-- Location: LCCOMB_X107_Y17_N16
\TimeModule_inst|PulseGen_inst|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~1_combout\ = (!\TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \TimeModule_inst|PulseGen_inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Add0~30_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~1_combout\);

-- Location: FF_X107_Y17_N17
\TimeModule_inst|PulseGen_inst|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(15));

-- Location: LCCOMB_X108_Y17_N6
\TimeModule_inst|PulseGen_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~32_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(16) & (\TimeModule_inst|PulseGen_inst|Add0~31\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(16) & (!\TimeModule_inst|PulseGen_inst|Add0~31\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~33\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(16) & !\TimeModule_inst|PulseGen_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(16),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~31\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~32_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~33\);

-- Location: FF_X108_Y17_N7
\TimeModule_inst|PulseGen_inst|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(16));

-- Location: LCCOMB_X108_Y17_N8
\TimeModule_inst|PulseGen_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~34_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(17) & (!\TimeModule_inst|PulseGen_inst|Add0~33\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(17) & ((\TimeModule_inst|PulseGen_inst|Add0~33\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~35\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~33\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(17),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~33\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~34_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~35\);

-- Location: LCCOMB_X108_Y17_N30
\TimeModule_inst|PulseGen_inst|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~0_combout\ = (\TimeModule_inst|PulseGen_inst|Add0~34_combout\ & !\TimeModule_inst|PulseGen_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|PulseGen_inst|Add0~34_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~0_combout\);

-- Location: FF_X108_Y17_N31
\TimeModule_inst|PulseGen_inst|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(17));

-- Location: LCCOMB_X108_Y17_N10
\TimeModule_inst|PulseGen_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~36_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(18) & (\TimeModule_inst|PulseGen_inst|Add0~35\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(18) & (!\TimeModule_inst|PulseGen_inst|Add0~35\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~37\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(18) & !\TimeModule_inst|PulseGen_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(18),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~35\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~36_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~37\);

-- Location: FF_X108_Y17_N11
\TimeModule_inst|PulseGen_inst|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(18));

-- Location: LCCOMB_X108_Y17_N12
\TimeModule_inst|PulseGen_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~38_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(19) & (!\TimeModule_inst|PulseGen_inst|Add0~37\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(19) & ((\TimeModule_inst|PulseGen_inst|Add0~37\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~39\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~37\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(19),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~37\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~38_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~39\);

-- Location: LCCOMB_X107_Y17_N18
\TimeModule_inst|PulseGen_inst|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~6_combout\ = (\TimeModule_inst|PulseGen_inst|Add0~38_combout\ & !\TimeModule_inst|PulseGen_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|PulseGen_inst|Add0~38_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~6_combout\);

-- Location: FF_X107_Y17_N19
\TimeModule_inst|PulseGen_inst|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(19));

-- Location: LCCOMB_X108_Y17_N14
\TimeModule_inst|PulseGen_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~40_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(20) & (\TimeModule_inst|PulseGen_inst|Add0~39\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(20) & (!\TimeModule_inst|PulseGen_inst|Add0~39\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~41\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(20) & !\TimeModule_inst|PulseGen_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(20),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~39\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~40_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~41\);

-- Location: LCCOMB_X108_Y17_N28
\TimeModule_inst|PulseGen_inst|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~7_combout\ = (\TimeModule_inst|PulseGen_inst|Add0~40_combout\ & !\TimeModule_inst|PulseGen_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|PulseGen_inst|Add0~40_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~7_combout\);

-- Location: FF_X108_Y17_N29
\TimeModule_inst|PulseGen_inst|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(20));

-- Location: LCCOMB_X108_Y17_N16
\TimeModule_inst|PulseGen_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~42_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(21) & (!\TimeModule_inst|PulseGen_inst|Add0~41\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(21) & ((\TimeModule_inst|PulseGen_inst|Add0~41\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~43\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~41\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(21),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~41\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~42_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~43\);

-- Location: LCCOMB_X107_Y17_N26
\TimeModule_inst|PulseGen_inst|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~8_combout\ = (!\TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \TimeModule_inst|PulseGen_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Add0~42_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~8_combout\);

-- Location: FF_X107_Y17_N27
\TimeModule_inst|PulseGen_inst|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(21));

-- Location: LCCOMB_X108_Y17_N18
\TimeModule_inst|PulseGen_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~44_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(22) & (\TimeModule_inst|PulseGen_inst|Add0~43\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(22) & (!\TimeModule_inst|PulseGen_inst|Add0~43\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~45\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(22) & !\TimeModule_inst|PulseGen_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(22),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~43\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~44_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~45\);

-- Location: LCCOMB_X108_Y17_N26
\TimeModule_inst|PulseGen_inst|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~9_combout\ = (!\TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \TimeModule_inst|PulseGen_inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Add0~44_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~9_combout\);

-- Location: FF_X108_Y17_N27
\TimeModule_inst|PulseGen_inst|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(22));

-- Location: LCCOMB_X108_Y17_N20
\TimeModule_inst|PulseGen_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~46_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(23) & (!\TimeModule_inst|PulseGen_inst|Add0~45\)) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(23) & ((\TimeModule_inst|PulseGen_inst|Add0~45\) # (GND)))
-- \TimeModule_inst|PulseGen_inst|Add0~47\ = CARRY((!\TimeModule_inst|PulseGen_inst|Add0~45\) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(23),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~45\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~46_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~47\);

-- Location: LCCOMB_X107_Y17_N28
\TimeModule_inst|PulseGen_inst|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~10_combout\ = (\TimeModule_inst|PulseGen_inst|Add0~46_combout\ & !\TimeModule_inst|PulseGen_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|PulseGen_inst|Add0~46_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~10_combout\);

-- Location: FF_X107_Y17_N29
\TimeModule_inst|PulseGen_inst|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(23));

-- Location: LCCOMB_X108_Y17_N22
\TimeModule_inst|PulseGen_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~48_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(24) & (\TimeModule_inst|PulseGen_inst|Add0~47\ $ (GND))) # (!\TimeModule_inst|PulseGen_inst|s_cnt\(24) & (!\TimeModule_inst|PulseGen_inst|Add0~47\ & VCC))
-- \TimeModule_inst|PulseGen_inst|Add0~49\ = CARRY((\TimeModule_inst|PulseGen_inst|s_cnt\(24) & !\TimeModule_inst|PulseGen_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(24),
	datad => VCC,
	cin => \TimeModule_inst|PulseGen_inst|Add0~47\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~48_combout\,
	cout => \TimeModule_inst|PulseGen_inst|Add0~49\);

-- Location: FF_X108_Y17_N23
\TimeModule_inst|PulseGen_inst|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(24));

-- Location: LCCOMB_X108_Y17_N24
\TimeModule_inst|PulseGen_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Add0~50_combout\ = \TimeModule_inst|PulseGen_inst|Add0~49\ $ (\TimeModule_inst|PulseGen_inst|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \TimeModule_inst|PulseGen_inst|s_cnt\(25),
	cin => \TimeModule_inst|PulseGen_inst|Add0~49\,
	combout => \TimeModule_inst|PulseGen_inst|Add0~50_combout\);

-- Location: LCCOMB_X107_Y17_N24
\TimeModule_inst|PulseGen_inst|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|s_cnt~11_combout\ = (!\TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \TimeModule_inst|PulseGen_inst|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Add0~50_combout\,
	combout => \TimeModule_inst|PulseGen_inst|s_cnt~11_combout\);

-- Location: FF_X107_Y17_N25
\TimeModule_inst|PulseGen_inst|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|s_cnt\(25));

-- Location: LCCOMB_X107_Y17_N12
\TimeModule_inst|PulseGen_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~7_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(25) & !\TimeModule_inst|PulseGen_inst|s_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(25),
	datad => \TimeModule_inst|PulseGen_inst|s_cnt\(24),
	combout => \TimeModule_inst|PulseGen_inst|Equal0~7_combout\);

-- Location: LCCOMB_X107_Y17_N20
\TimeModule_inst|PulseGen_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~5_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(1) & (\TimeModule_inst|PulseGen_inst|s_cnt\(19) & (!\TimeModule_inst|PulseGen_inst|s_cnt\(18) & \TimeModule_inst|PulseGen_inst|s_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(1),
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(19),
	datac => \TimeModule_inst|PulseGen_inst|s_cnt\(18),
	datad => \TimeModule_inst|PulseGen_inst|s_cnt\(0),
	combout => \TimeModule_inst|PulseGen_inst|Equal0~5_combout\);

-- Location: LCCOMB_X107_Y17_N22
\TimeModule_inst|PulseGen_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~6_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(21) & (\TimeModule_inst|PulseGen_inst|s_cnt\(23) & (\TimeModule_inst|PulseGen_inst|s_cnt\(22) & \TimeModule_inst|PulseGen_inst|s_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(21),
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(23),
	datac => \TimeModule_inst|PulseGen_inst|s_cnt\(22),
	datad => \TimeModule_inst|PulseGen_inst|s_cnt\(20),
	combout => \TimeModule_inst|PulseGen_inst|Equal0~6_combout\);

-- Location: LCCOMB_X107_Y17_N30
\TimeModule_inst|PulseGen_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~1_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(13) & (\TimeModule_inst|PulseGen_inst|s_cnt\(12) & (!\TimeModule_inst|PulseGen_inst|s_cnt\(10) & !\TimeModule_inst|PulseGen_inst|s_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(13),
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(12),
	datac => \TimeModule_inst|PulseGen_inst|s_cnt\(10),
	datad => \TimeModule_inst|PulseGen_inst|s_cnt\(11),
	combout => \TimeModule_inst|PulseGen_inst|Equal0~1_combout\);

-- Location: LCCOMB_X107_Y17_N8
\TimeModule_inst|PulseGen_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~0_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(14) & (\TimeModule_inst|PulseGen_inst|s_cnt\(15) & (!\TimeModule_inst|PulseGen_inst|s_cnt\(16) & \TimeModule_inst|PulseGen_inst|s_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(14),
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(15),
	datac => \TimeModule_inst|PulseGen_inst|s_cnt\(16),
	datad => \TimeModule_inst|PulseGen_inst|s_cnt\(17),
	combout => \TimeModule_inst|PulseGen_inst|Equal0~0_combout\);

-- Location: LCCOMB_X108_Y18_N2
\TimeModule_inst|PulseGen_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~2_combout\ = (!\TimeModule_inst|PulseGen_inst|s_cnt\(8) & (\TimeModule_inst|PulseGen_inst|s_cnt\(6) & (!\TimeModule_inst|PulseGen_inst|s_cnt\(7) & !\TimeModule_inst|PulseGen_inst|s_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(8),
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(6),
	datac => \TimeModule_inst|PulseGen_inst|s_cnt\(7),
	datad => \TimeModule_inst|PulseGen_inst|s_cnt\(9),
	combout => \TimeModule_inst|PulseGen_inst|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y18_N4
\TimeModule_inst|PulseGen_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~3_combout\ = (\TimeModule_inst|PulseGen_inst|s_cnt\(2) & (\TimeModule_inst|PulseGen_inst|s_cnt\(5) & (\TimeModule_inst|PulseGen_inst|s_cnt\(4) & \TimeModule_inst|PulseGen_inst|s_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|s_cnt\(2),
	datab => \TimeModule_inst|PulseGen_inst|s_cnt\(5),
	datac => \TimeModule_inst|PulseGen_inst|s_cnt\(4),
	datad => \TimeModule_inst|PulseGen_inst|s_cnt\(3),
	combout => \TimeModule_inst|PulseGen_inst|Equal0~3_combout\);

-- Location: LCCOMB_X107_Y17_N0
\TimeModule_inst|PulseGen_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~4_combout\ = (\TimeModule_inst|PulseGen_inst|Equal0~1_combout\ & (\TimeModule_inst|PulseGen_inst|Equal0~0_combout\ & (\TimeModule_inst|PulseGen_inst|Equal0~2_combout\ & 
-- \TimeModule_inst|PulseGen_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|Equal0~1_combout\,
	datab => \TimeModule_inst|PulseGen_inst|Equal0~0_combout\,
	datac => \TimeModule_inst|PulseGen_inst|Equal0~2_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Equal0~3_combout\,
	combout => \TimeModule_inst|PulseGen_inst|Equal0~4_combout\);

-- Location: LCCOMB_X107_Y17_N2
\TimeModule_inst|PulseGen_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|Equal0~8_combout\ = (\TimeModule_inst|PulseGen_inst|Equal0~7_combout\ & (\TimeModule_inst|PulseGen_inst|Equal0~5_combout\ & (\TimeModule_inst|PulseGen_inst|Equal0~6_combout\ & 
-- \TimeModule_inst|PulseGen_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|PulseGen_inst|Equal0~7_combout\,
	datab => \TimeModule_inst|PulseGen_inst|Equal0~5_combout\,
	datac => \TimeModule_inst|PulseGen_inst|Equal0~6_combout\,
	datad => \TimeModule_inst|PulseGen_inst|Equal0~4_combout\,
	combout => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\);

-- Location: LCCOMB_X107_Y17_N10
\TimeModule_inst|PulseGen_inst|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|PulseGen_inst|pulse~feeder_combout\ = \TimeModule_inst|PulseGen_inst|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	combout => \TimeModule_inst|PulseGen_inst|pulse~feeder_combout\);

-- Location: FF_X107_Y17_N11
\TimeModule_inst|PulseGen_inst|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|PulseGen_inst|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|PulseGen_inst|pulse~q\);

-- Location: LCCOMB_X107_Y20_N4
\Airfryer_FSM_inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector15~0_combout\ = (!\TimeModule_inst|Counter_inst|s_Time_Status~q\ & \debouncer_start_cooking_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \debouncer_start_cooking_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|Selector15~0_combout\);

-- Location: LCCOMB_X107_Y20_N6
\TimeModule_inst|Counter_inst|s_Time_Status~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_Time_Status~0_combout\ = (\TimeModule_inst|PulseGen_inst|pulse~q\ & (\Airfryer_FSM_inst|Selector15~0_combout\ & ((\Airfryer_FSM_inst|s_currentState.COOK~q\) # (\Airfryer_FSM_inst|s_currentState.PREHEAT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datab => \TimeModule_inst|PulseGen_inst|pulse~q\,
	datac => \Airfryer_FSM_inst|Selector15~0_combout\,
	datad => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	combout => \TimeModule_inst|Counter_inst|s_Time_Status~0_combout\);

-- Location: LCCOMB_X106_Y20_N0
\TimeModule_inst|Counter_inst|s_cntValue~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_cntValue~7_combout\ = (\debouncer_enable_inst|dff_input~q\ & (((!\TimeModule_inst|Counter_inst|Equal0~1_combout\ & \TimeModule_inst|Counter_inst|s_Time_Status~0_combout\)) # (!\Airfryer_FSM_inst|Carregar_Tempo~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|Equal0~1_combout\,
	datab => \Airfryer_FSM_inst|Carregar_Tempo~2_combout\,
	datac => \debouncer_enable_inst|dff_input~q\,
	datad => \TimeModule_inst|Counter_inst|s_Time_Status~0_combout\,
	combout => \TimeModule_inst|Counter_inst|s_cntValue~7_combout\);

-- Location: FF_X106_Y20_N11
\TimeModule_inst|Counter_inst|s_cntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|Counter_inst|s_cntValue[0]~5_combout\,
	asdata => \Airfryer_FSM_inst|Selector7~2_combout\,
	sload => \Airfryer_FSM_inst|Carregar_Tempo~3_combout\,
	ena => \TimeModule_inst|Counter_inst|s_cntValue~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|Counter_inst|s_cntValue\(0));

-- Location: LCCOMB_X106_Y20_N12
\TimeModule_inst|Counter_inst|s_cntValue[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_cntValue[1]~8_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(1) & (\TimeModule_inst|Counter_inst|s_cntValue[0]~6\ & VCC)) # (!\TimeModule_inst|Counter_inst|s_cntValue\(1) & 
-- (!\TimeModule_inst|Counter_inst|s_cntValue[0]~6\))
-- \TimeModule_inst|Counter_inst|s_cntValue[1]~9\ = CARRY((!\TimeModule_inst|Counter_inst|s_cntValue\(1) & !\TimeModule_inst|Counter_inst|s_cntValue[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(1),
	datad => VCC,
	cin => \TimeModule_inst|Counter_inst|s_cntValue[0]~6\,
	combout => \TimeModule_inst|Counter_inst|s_cntValue[1]~8_combout\,
	cout => \TimeModule_inst|Counter_inst|s_cntValue[1]~9\);

-- Location: LCCOMB_X108_Y20_N30
\Airfryer_FSM_inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Equal4~2_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\ & !\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|Equal4~2_combout\);

-- Location: LCCOMB_X108_Y20_N4
\Airfryer_FSM_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector6~0_combout\ = (\Airfryer_FSM_inst|Selector5~0_combout\ & ((\SW[5]~input_o\) # ((!\SW[6]~input_o\)))) # (!\Airfryer_FSM_inst|Selector5~0_combout\ & (\Airfryer_FSM_inst|s_currentState.COOK~q\ & (\SW[5]~input_o\ $ 
-- (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datac => \SW[6]~input_o\,
	datad => \Airfryer_FSM_inst|Selector5~0_combout\,
	combout => \Airfryer_FSM_inst|Selector6~0_combout\);

-- Location: LCCOMB_X107_Y20_N10
\Airfryer_FSM_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector6~1_combout\ = (\SW[4]~input_o\ & (\Airfryer_FSM_inst|s_currentState~10_combout\ & (\Airfryer_FSM_inst|Equal4~2_combout\))) # (!\SW[4]~input_o\ & ((\Airfryer_FSM_inst|Selector6~0_combout\) # 
-- ((\Airfryer_FSM_inst|s_currentState~10_combout\ & \Airfryer_FSM_inst|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Airfryer_FSM_inst|s_currentState~10_combout\,
	datac => \Airfryer_FSM_inst|Equal4~2_combout\,
	datad => \Airfryer_FSM_inst|Selector6~0_combout\,
	combout => \Airfryer_FSM_inst|Selector6~1_combout\);

-- Location: FF_X106_Y20_N13
\TimeModule_inst|Counter_inst|s_cntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|Counter_inst|s_cntValue[1]~8_combout\,
	asdata => \Airfryer_FSM_inst|Selector6~1_combout\,
	sload => \Airfryer_FSM_inst|Carregar_Tempo~3_combout\,
	ena => \TimeModule_inst|Counter_inst|s_cntValue~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|Counter_inst|s_cntValue\(1));

-- Location: LCCOMB_X106_Y20_N14
\TimeModule_inst|Counter_inst|s_cntValue[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_cntValue[2]~10_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(2) & ((GND) # (!\TimeModule_inst|Counter_inst|s_cntValue[1]~9\))) # (!\TimeModule_inst|Counter_inst|s_cntValue\(2) & 
-- (\TimeModule_inst|Counter_inst|s_cntValue[1]~9\ $ (GND)))
-- \TimeModule_inst|Counter_inst|s_cntValue[2]~11\ = CARRY((\TimeModule_inst|Counter_inst|s_cntValue\(2)) # (!\TimeModule_inst|Counter_inst|s_cntValue[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => VCC,
	cin => \TimeModule_inst|Counter_inst|s_cntValue[1]~9\,
	combout => \TimeModule_inst|Counter_inst|s_cntValue[2]~10_combout\,
	cout => \TimeModule_inst|Counter_inst|s_cntValue[2]~11\);

-- Location: LCCOMB_X106_Y20_N26
\Airfryer_FSM_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector5~1_combout\ = (!\Airfryer_FSM_inst|s_currentState.IDLE~q\ & (\SW[4]~input_o\ & (!\SW[6]~input_o\ & \debouncer_start_cooking_inst|dff_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datab => \SW[4]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \debouncer_start_cooking_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|Selector5~1_combout\);

-- Location: LCCOMB_X106_Y20_N4
\Airfryer_FSM_inst|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector5~2_combout\ = (\Airfryer_FSM_inst|Selector5~1_combout\) # ((!\Airfryer_FSM_inst|s_currentState~9_combout\ & ((\Airfryer_FSM_inst|s_currentState.COOK~q\) # (\Airfryer_FSM_inst|s_currentState~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector5~1_combout\,
	datab => \Airfryer_FSM_inst|s_currentState~9_combout\,
	datac => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datad => \Airfryer_FSM_inst|s_currentState~10_combout\,
	combout => \Airfryer_FSM_inst|Selector5~2_combout\);

-- Location: FF_X106_Y20_N15
\TimeModule_inst|Counter_inst|s_cntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|Counter_inst|s_cntValue[2]~10_combout\,
	asdata => \Airfryer_FSM_inst|Selector5~2_combout\,
	sload => \Airfryer_FSM_inst|Carregar_Tempo~3_combout\,
	ena => \TimeModule_inst|Counter_inst|s_cntValue~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|Counter_inst|s_cntValue\(2));

-- Location: LCCOMB_X106_Y20_N16
\TimeModule_inst|Counter_inst|s_cntValue[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_cntValue[3]~12_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(3) & (\TimeModule_inst|Counter_inst|s_cntValue[2]~11\ & VCC)) # (!\TimeModule_inst|Counter_inst|s_cntValue\(3) & 
-- (!\TimeModule_inst|Counter_inst|s_cntValue[2]~11\))
-- \TimeModule_inst|Counter_inst|s_cntValue[3]~13\ = CARRY((!\TimeModule_inst|Counter_inst|s_cntValue\(3) & !\TimeModule_inst|Counter_inst|s_cntValue[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => VCC,
	cin => \TimeModule_inst|Counter_inst|s_cntValue[2]~11\,
	combout => \TimeModule_inst|Counter_inst|s_cntValue[3]~12_combout\,
	cout => \TimeModule_inst|Counter_inst|s_cntValue[3]~13\);

-- Location: FF_X106_Y20_N17
\TimeModule_inst|Counter_inst|s_cntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|Counter_inst|s_cntValue[3]~12_combout\,
	asdata => \Airfryer_FSM_inst|Selector4~0_combout\,
	sload => \Airfryer_FSM_inst|Carregar_Tempo~3_combout\,
	ena => \TimeModule_inst|Counter_inst|s_cntValue~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|Counter_inst|s_cntValue\(3));

-- Location: LCCOMB_X106_Y20_N18
\TimeModule_inst|Counter_inst|s_cntValue[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_cntValue[4]~14_combout\ = \TimeModule_inst|Counter_inst|s_cntValue[3]~13\ $ (\TimeModule_inst|Counter_inst|s_cntValue\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(4),
	cin => \TimeModule_inst|Counter_inst|s_cntValue[3]~13\,
	combout => \TimeModule_inst|Counter_inst|s_cntValue[4]~14_combout\);

-- Location: LCCOMB_X109_Y20_N20
\Airfryer_FSM_inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|process_1~0_combout\ = (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\debouncer_start_cooking_inst|dff_input~q\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \debouncer_start_cooking_inst|dff_input~q\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|process_1~0_combout\);

-- Location: LCCOMB_X109_Y20_N10
\Airfryer_FSM_inst|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector12~1_combout\ = (!\SW[5]~input_o\ & !\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|Selector12~1_combout\);

-- Location: LCCOMB_X106_Y20_N2
\Airfryer_FSM_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector3~0_combout\ = (!\SW[6]~input_o\ & ((\Airfryer_FSM_inst|s_currentState.COOK~q\) # ((!\Airfryer_FSM_inst|Selector12~1_combout\ & \Airfryer_FSM_inst|s_currentState~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector12~1_combout\,
	datab => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datac => \SW[6]~input_o\,
	datad => \Airfryer_FSM_inst|s_currentState~10_combout\,
	combout => \Airfryer_FSM_inst|Selector3~0_combout\);

-- Location: LCCOMB_X106_Y20_N8
\Airfryer_FSM_inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector3~1_combout\ = (\Airfryer_FSM_inst|Selector3~0_combout\) # ((!\Airfryer_FSM_inst|s_currentState.IDLE~q\ & \Airfryer_FSM_inst|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datac => \Airfryer_FSM_inst|process_1~0_combout\,
	datad => \Airfryer_FSM_inst|Selector3~0_combout\,
	combout => \Airfryer_FSM_inst|Selector3~1_combout\);

-- Location: FF_X106_Y20_N19
\TimeModule_inst|Counter_inst|s_cntValue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|Counter_inst|s_cntValue[4]~14_combout\,
	asdata => \Airfryer_FSM_inst|Selector3~1_combout\,
	sload => \Airfryer_FSM_inst|Carregar_Tempo~3_combout\,
	ena => \TimeModule_inst|Counter_inst|s_cntValue~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|Counter_inst|s_cntValue\(4));

-- Location: LCCOMB_X106_Y20_N28
\TimeModule_inst|Counter_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|Equal0~0_combout\ = (!\TimeModule_inst|Counter_inst|s_cntValue\(1) & (!\TimeModule_inst|Counter_inst|s_cntValue\(4) & (!\TimeModule_inst|Counter_inst|s_cntValue\(2) & !\TimeModule_inst|Counter_inst|s_cntValue\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(1),
	datab => \TimeModule_inst|Counter_inst|s_cntValue\(4),
	datac => \TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(3),
	combout => \TimeModule_inst|Counter_inst|Equal0~0_combout\);

-- Location: LCCOMB_X106_Y20_N6
\TimeModule_inst|Counter_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|Equal0~1_combout\ = (!\TimeModule_inst|Counter_inst|s_cntValue\(0) & \TimeModule_inst|Counter_inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \TimeModule_inst|Counter_inst|Equal0~0_combout\,
	combout => \TimeModule_inst|Counter_inst|Equal0~1_combout\);

-- Location: LCCOMB_X107_Y20_N8
\TimeModule_inst|Counter_inst|s_Time_Status~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_Time_Status~1_combout\ = (\TimeModule_inst|Counter_inst|s_Time_Status~q\) # ((\debouncer_enable_inst|dff_input~q\ & (\TimeModule_inst|Counter_inst|Equal0~1_combout\ & 
-- \TimeModule_inst|Counter_inst|s_Time_Status~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_enable_inst|dff_input~q\,
	datab => \TimeModule_inst|Counter_inst|Equal0~1_combout\,
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \TimeModule_inst|Counter_inst|s_Time_Status~0_combout\,
	combout => \TimeModule_inst|Counter_inst|s_Time_Status~1_combout\);

-- Location: LCCOMB_X107_Y20_N26
\TimeModule_inst|Counter_inst|s_Time_Status~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Counter_inst|s_Time_Status~2_combout\ = (\TimeModule_inst|Counter_inst|s_Time_Status~1_combout\ & ((\Airfryer_FSM_inst|Carregar_Tempo~2_combout\) # (!\debouncer_enable_inst|dff_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_enable_inst|dff_input~q\,
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~1_combout\,
	datad => \Airfryer_FSM_inst|Carregar_Tempo~2_combout\,
	combout => \TimeModule_inst|Counter_inst|s_Time_Status~2_combout\);

-- Location: FF_X107_Y20_N27
\TimeModule_inst|Counter_inst|s_Time_Status\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeModule_inst|Counter_inst|s_Time_Status~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeModule_inst|Counter_inst|s_Time_Status~q\);

-- Location: LCCOMB_X107_Y20_N12
\Airfryer_FSM_inst|s_currentState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~20_combout\ = (\debouncer_start_cooking_inst|dff_input~q\ & (\TimeModule_inst|Counter_inst|s_Time_Status~q\ & \Airfryer_FSM_inst|s_currentState.COOK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_start_cooking_inst|dff_input~q\,
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \Airfryer_FSM_inst|s_currentState~20_combout\);

-- Location: LCCOMB_X107_Y20_N20
\Airfryer_FSM_inst|s_currentState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~21_combout\ = (\debouncer_enable_inst|dff_input~q\ & ((\Airfryer_FSM_inst|s_currentState~20_combout\) # ((\Airfryer_FSM_inst|s_currentState~14_combout\ & \Airfryer_FSM_inst|s_currentState.FINISH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState~20_combout\,
	datab => \Airfryer_FSM_inst|s_currentState~14_combout\,
	datac => \Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|s_currentState~21_combout\);

-- Location: FF_X107_Y20_N21
\Airfryer_FSM_inst|s_currentState.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Airfryer_FSM_inst|s_currentState~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Airfryer_FSM_inst|s_currentState.FINISH~q\);

-- Location: LCCOMB_X107_Y20_N16
\Airfryer_FSM_inst|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~14_combout\ = (!\Airfryer_FSM_inst|s_currentState~10_combout\ & ((!\debouncer_abrir_forno_inst|dff_input~q\) # (!\Airfryer_FSM_inst|s_currentState.FINISH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datac => \debouncer_abrir_forno_inst|dff_input~q\,
	datad => \Airfryer_FSM_inst|s_currentState~10_combout\,
	combout => \Airfryer_FSM_inst|s_currentState~14_combout\);

-- Location: LCCOMB_X107_Y20_N30
\Airfryer_FSM_inst|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~18_combout\ = (!\Airfryer_FSM_inst|s_currentState.IDLE~q\ & (((!\TimeModule_inst|Counter_inst|s_Time_Status~q\) # (!\debouncer_start_cooking_inst|dff_input~q\)) # (!\Airfryer_FSM_inst|s_currentState.COOK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datab => \debouncer_start_cooking_inst|dff_input~q\,
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	combout => \Airfryer_FSM_inst|s_currentState~18_combout\);

-- Location: LCCOMB_X108_Y20_N28
\Airfryer_FSM_inst|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~17_combout\ = ((\SW[6]~input_o\ & ((\SW[4]~input_o\) # (!\SW[5]~input_o\)))) # (!\debouncer_start_cooking_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \debouncer_start_cooking_inst|dff_input~q\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|s_currentState~17_combout\);

-- Location: LCCOMB_X107_Y20_N2
\Airfryer_FSM_inst|s_currentState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~19_combout\ = (\debouncer_enable_inst|dff_input~q\ & (((!\Airfryer_FSM_inst|s_currentState~17_combout\) # (!\Airfryer_FSM_inst|s_currentState~18_combout\)) # (!\Airfryer_FSM_inst|s_currentState~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_enable_inst|dff_input~q\,
	datab => \Airfryer_FSM_inst|s_currentState~14_combout\,
	datac => \Airfryer_FSM_inst|s_currentState~18_combout\,
	datad => \Airfryer_FSM_inst|s_currentState~17_combout\,
	combout => \Airfryer_FSM_inst|s_currentState~19_combout\);

-- Location: FF_X107_Y20_N3
\Airfryer_FSM_inst|s_currentState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Airfryer_FSM_inst|s_currentState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Airfryer_FSM_inst|s_currentState.IDLE~q\);

-- Location: LCCOMB_X107_Y20_N14
\Airfryer_FSM_inst|luz_vermelha[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|luz_vermelha[0]~0_combout\ = (\Airfryer_FSM_inst|s_currentState.IDLE~q\ & !\Airfryer_FSM_inst|s_currentState.FINISH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datad => \Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \Airfryer_FSM_inst|luz_vermelha[0]~0_combout\);

-- Location: LCCOMB_X107_Y20_N0
\Airfryer_FSM_inst|luz_vermelha[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|luz_vermelha[0]~1_combout\ = (\debouncer_enable_inst|dff_input~q\ & (((\Airfryer_FSM_inst|s_currentState.COOK~q\ & !\Airfryer_FSM_inst|Selector15~0_combout\)) # (!\Airfryer_FSM_inst|luz_vermelha[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|luz_vermelha[0]~0_combout\,
	datab => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datac => \Airfryer_FSM_inst|Selector15~0_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|luz_vermelha[0]~1_combout\);

-- Location: LCCOMB_X107_Y20_N22
\Airfryer_FSM_inst|luz_vermelha[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|luz_vermelha[1]~2_combout\ = (\debouncer_enable_inst|dff_input~q\ & (((\Airfryer_FSM_inst|s_currentState.PREHEAT~q\ & !\TimeModule_inst|Counter_inst|s_Time_Status~q\)) # (!\Airfryer_FSM_inst|luz_vermelha[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|luz_vermelha[0]~0_combout\,
	datab => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|luz_vermelha[1]~2_combout\);

-- Location: LCCOMB_X108_Y20_N8
\Airfryer_FSM_inst|s_currentState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|s_currentState~23_combout\ = (\Airfryer_FSM_inst|s_currentState.COOL~q\) # ((\debouncer_abrir_forno_inst|dff_input~q\ & \Airfryer_FSM_inst|s_currentState.FINISH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_abrir_forno_inst|dff_input~q\,
	datac => \Airfryer_FSM_inst|s_currentState.COOL~q\,
	datad => \Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \Airfryer_FSM_inst|s_currentState~23_combout\);

-- Location: FF_X108_Y20_N9
\Airfryer_FSM_inst|s_currentState.COOL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Airfryer_FSM_inst|s_currentState~23_combout\,
	sclr => \debouncer_enable_inst|ALT_INV_dff_input~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Airfryer_FSM_inst|s_currentState.COOL~q\);

-- Location: LCCOMB_X107_Y20_N24
\Airfryer_FSM_inst|luz_vermelha[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|luz_vermelha[2]~3_combout\ = ((\Airfryer_FSM_inst|s_currentState.COOK~q\ & ((\debouncer_start_cooking_inst|dff_input~q\))) # (!\Airfryer_FSM_inst|s_currentState.COOK~q\ & (\Airfryer_FSM_inst|s_currentState.COOL~q\))) # 
-- (!\debouncer_enable_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	datab => \Airfryer_FSM_inst|s_currentState.COOL~q\,
	datac => \debouncer_start_cooking_inst|dff_input~q\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|luz_vermelha[2]~3_combout\);

-- Location: LCCOMB_X108_Y20_N26
\Airfryer_FSM_inst|luz_verde[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|luz_verde[0]~0_combout\ = (\TimeModule_inst|Counter_inst|s_Time_Status~q\ & ((\Airfryer_FSM_inst|s_currentState.PREHEAT~q\) # ((!\debouncer_start_cooking_inst|dff_input~q\ & \Airfryer_FSM_inst|s_currentState.COOK~q\)))) # 
-- (!\TimeModule_inst|Counter_inst|s_Time_Status~q\ & (((\Airfryer_FSM_inst|s_currentState.COOK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datab => \debouncer_start_cooking_inst|dff_input~q\,
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \Airfryer_FSM_inst|luz_verde[0]~0_combout\);

-- Location: LCCOMB_X108_Y20_N0
\Airfryer_FSM_inst|luz_verde[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|luz_verde[0]~1_combout\ = (\debouncer_enable_inst|dff_input~q\ & ((\Airfryer_FSM_inst|luz_verde[0]~0_combout\) # ((\Airfryer_FSM_inst|s_currentState.COOL~q\) # (\Airfryer_FSM_inst|s_currentState.FINISH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|luz_verde[0]~0_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datac => \Airfryer_FSM_inst|s_currentState.COOL~q\,
	datad => \Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \Airfryer_FSM_inst|luz_verde[0]~1_combout\);

-- Location: LCCOMB_X108_Y20_N22
\Airfryer_FSM_inst|luz_verde[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|luz_verde[1]~2_combout\ = (\Airfryer_FSM_inst|s_currentState.COOK~q\) # ((\debouncer_abrir_forno_inst|dff_input~q\ & (\Airfryer_FSM_inst|s_currentState.PREHEAT~q\ & \TimeModule_inst|Counter_inst|s_Time_Status~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_abrir_forno_inst|dff_input~q\,
	datab => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datac => \TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \Airfryer_FSM_inst|luz_verde[1]~2_combout\);

-- Location: LCCOMB_X108_Y20_N20
\Airfryer_FSM_inst|luz_verde[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|luz_verde[1]~3_combout\ = (\debouncer_enable_inst|dff_input~q\ & ((\Airfryer_FSM_inst|luz_verde[1]~2_combout\) # (\Airfryer_FSM_inst|s_currentState.FINISH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|luz_verde[1]~2_combout\,
	datab => \Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datac => \debouncer_enable_inst|dff_input~q\,
	combout => \Airfryer_FSM_inst|luz_verde[1]~3_combout\);

-- Location: LCCOMB_X108_Y20_N14
\Airfryer_FSM_inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector9~0_combout\ = (!\Airfryer_FSM_inst|s_currentState.FINISH~q\ & (!\Airfryer_FSM_inst|s_currentState.COOL~q\ & !\Airfryer_FSM_inst|s_currentState.COOK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datac => \Airfryer_FSM_inst|s_currentState.COOL~q\,
	datad => \Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \Airfryer_FSM_inst|Selector9~0_combout\);

-- Location: LCCOMB_X109_Y20_N14
\Airfryer_FSM_inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector10~0_combout\ = (\Airfryer_FSM_inst|Selector9~0_combout\ & ((\Airfryer_FSM_inst|s_currentState.IDLE~q\) # (!\debouncer_start_cooking_inst|dff_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_start_cooking_inst|dff_input~q\,
	datac => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datad => \Airfryer_FSM_inst|Selector9~0_combout\,
	combout => \Airfryer_FSM_inst|Selector10~0_combout\);

-- Location: LCCOMB_X109_Y20_N2
\Airfryer_FSM_inst|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector13~0_combout\ = (!\SW[6]~input_o\ & (((!\Airfryer_FSM_inst|Selector12~1_combout\ & \Airfryer_FSM_inst|s_currentState.PREHEAT~q\)) # (!\Airfryer_FSM_inst|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector12~1_combout\,
	datab => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datac => \Airfryer_FSM_inst|Selector10~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \Airfryer_FSM_inst|Selector13~0_combout\);

-- Location: LCCOMB_X109_Y20_N30
\Airfryer_FSM_inst|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector9~1_combout\ = (\Airfryer_FSM_inst|Selector9~0_combout\ & (\Airfryer_FSM_inst|Selector5~0_combout\ & ((\Airfryer_FSM_inst|Equal4~0_combout\) # (!\SW[6]~input_o\)))) # (!\Airfryer_FSM_inst|Selector9~0_combout\ & 
-- ((\Airfryer_FSM_inst|Equal4~0_combout\) # ((!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector9~0_combout\,
	datab => \Airfryer_FSM_inst|Equal4~0_combout\,
	datac => \Airfryer_FSM_inst|Selector5~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \Airfryer_FSM_inst|Selector9~1_combout\);

-- Location: LCCOMB_X109_Y20_N18
\Airfryer_FSM_inst|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector9~2_combout\ = (\Airfryer_FSM_inst|Selector9~1_combout\) # ((\Airfryer_FSM_inst|s_currentState.PREHEAT~q\ & !\Airfryer_FSM_inst|s_currentState~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datac => \Airfryer_FSM_inst|Selector9~1_combout\,
	datad => \Airfryer_FSM_inst|s_currentState~9_combout\,
	combout => \Airfryer_FSM_inst|Selector9~2_combout\);

-- Location: LCCOMB_X108_Y20_N12
\Airfryer_FSM_inst|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector10~1_combout\ = (\Airfryer_FSM_inst|Equal4~1_combout\ & (((\Airfryer_FSM_inst|s_currentState.PREHEAT~q\ & \SW[4]~input_o\)) # (!\Airfryer_FSM_inst|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datab => \Airfryer_FSM_inst|Equal4~1_combout\,
	datac => \Airfryer_FSM_inst|Selector10~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|Selector10~1_combout\);

-- Location: LCCOMB_X109_Y20_N8
\Airfryer_FSM_inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector14~0_combout\ = (\debouncer_start_cooking_inst|dff_input~q\) # (\Airfryer_FSM_inst|s_currentState.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_start_cooking_inst|dff_input~q\,
	datac => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	combout => \Airfryer_FSM_inst|Selector14~0_combout\);

-- Location: LCCOMB_X109_Y20_N26
\Airfryer_FSM_inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector11~0_combout\ = (\SW[5]~input_o\ & (\Airfryer_FSM_inst|Selector14~0_combout\ & ((!\SW[4]~input_o\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \Airfryer_FSM_inst|Selector14~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \Airfryer_FSM_inst|Selector11~0_combout\);

-- Location: LCCOMB_X107_Y23_N20
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Airfryer_FSM_inst|Selector11~0_combout\ & \debouncer_enable_inst|dff_input~q\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Airfryer_FSM_inst|Selector11~0_combout\ & \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector11~0_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X107_Y23_N22
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Airfryer_FSM_inst|Selector10~1_combout\ & ((\debouncer_enable_inst|dff_input~q\ & 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\debouncer_enable_inst|dff_input~q\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))) # 
-- (!\Airfryer_FSM_inst|Selector10~1_combout\ & (((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((!\debouncer_enable_inst|dff_input~q\) # 
-- (!\Airfryer_FSM_inst|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector10~1_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X107_Y23_N24
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (\Airfryer_FSM_inst|Selector9~2_combout\ & 
-- (\debouncer_enable_inst|dff_input~q\ & VCC))) # (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Airfryer_FSM_inst|Selector9~2_combout\ & \debouncer_enable_inst|dff_input~q\)))))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Airfryer_FSM_inst|Selector9~2_combout\ & (\debouncer_enable_inst|dff_input~q\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector9~2_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X107_Y23_N26
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X106_Y23_N8
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Airfryer_FSM_inst|Selector9~2_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Airfryer_FSM_inst|Selector9~2_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\);

-- Location: LCCOMB_X106_Y23_N22
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\);

-- Location: LCCOMB_X107_Y23_N12
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\);

-- Location: LCCOMB_X106_Y23_N24
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Airfryer_FSM_inst|Selector10~1_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Airfryer_FSM_inst|Selector10~1_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\);

-- Location: LCCOMB_X108_Y23_N4
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\);

-- Location: LCCOMB_X107_Y23_N14
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ = (\Airfryer_FSM_inst|Selector11~0_combout\ & (\debouncer_enable_inst|dff_input~q\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector11~0_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\);

-- Location: LCCOMB_X109_Y20_N12
\Airfryer_FSM_inst|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector12~0_combout\ = (\SW[6]~input_o\ & (((\Airfryer_FSM_inst|s_currentState.PREHEAT~q\) # (!\Airfryer_FSM_inst|s_currentState.IDLE~q\)) # (!\Airfryer_FSM_inst|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector9~0_combout\,
	datab => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datac => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datad => \SW[6]~input_o\,
	combout => \Airfryer_FSM_inst|Selector12~0_combout\);

-- Location: LCCOMB_X109_Y20_N24
\Airfryer_FSM_inst|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector12~2_combout\ = ((\Airfryer_FSM_inst|Selector12~0_combout\) # ((\Airfryer_FSM_inst|Selector12~1_combout\ & \Airfryer_FSM_inst|s_currentState.PREHEAT~q\))) # (!\Airfryer_FSM_inst|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector12~1_combout\,
	datab => \Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datac => \Airfryer_FSM_inst|Selector14~0_combout\,
	datad => \Airfryer_FSM_inst|Selector12~0_combout\,
	combout => \Airfryer_FSM_inst|Selector12~2_combout\);

-- Location: LCCOMB_X107_Y23_N18
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Airfryer_FSM_inst|Selector12~2_combout\) # (!\debouncer_enable_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_enable_inst|dff_input~q\,
	datac => \Airfryer_FSM_inst|Selector12~2_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X106_Y23_N14
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\);

-- Location: LCCOMB_X107_Y23_N16
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Airfryer_FSM_inst|Selector12~2_combout\) # 
-- (!\debouncer_enable_inst|dff_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector12~2_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\);

-- Location: LCCOMB_X107_Y23_N0
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X107_Y23_N2
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X107_Y23_N4
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\)))))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X107_Y23_N6
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X107_Y23_N8
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y23_N4
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42_combout\ = (\Airfryer_FSM_inst|Selector13~0_combout\ & (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector13~0_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42_combout\);

-- Location: LCCOMB_X109_Y23_N28
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Airfryer_FSM_inst|Selector13~0_combout\ & \debouncer_enable_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector13~0_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X109_Y23_N26
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~43_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~43_combout\);

-- Location: LCCOMB_X108_Y23_N10
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~43_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~43_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X107_Y23_N30
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\) # ((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~30_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X108_Y23_N6
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~38_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~38_combout\);

-- Location: LCCOMB_X108_Y23_N8
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~39_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~39_combout\);

-- Location: LCCOMB_X107_Y23_N28
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~32_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X108_Y23_N22
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~34_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X108_Y23_N2
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~40_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~40_combout\);

-- Location: LCCOMB_X107_Y23_N10
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\) # ((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[24]~36_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X108_Y23_N24
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X108_Y23_N12
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X108_Y23_N14
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~40_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~40_combout\)))))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~40_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X108_Y23_N16
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~39_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~39_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~39_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~39_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X108_Y23_N18
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~38_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~38_combout\) # 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~38_combout\) # 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~38_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X108_Y23_N20
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X108_Y23_N0
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\);

-- Location: LCCOMB_X110_Y23_N8
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~44_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~44_combout\);

-- Location: LCCOMB_X109_Y23_N16
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~45_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~45_combout\);

-- Location: LCCOMB_X108_Y23_N26
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\) # ((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\);

-- Location: LCCOMB_X108_Y23_N28
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # ((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\);

-- Location: LCCOMB_X109_Y23_N18
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~46_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~46_combout\);

-- Location: LCCOMB_X109_Y23_N8
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~47_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~47_combout\);

-- Location: LCCOMB_X108_Y23_N30
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\);

-- Location: LCCOMB_X109_Y23_N2
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~48_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~48_combout\);

-- Location: LCCOMB_X109_Y23_N6
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42_combout\) # ((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~42_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\);

-- Location: LCCOMB_X109_Y23_N14
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\Airfryer_FSM_inst|Selector12~2_combout\) # (!\debouncer_enable_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|Selector12~2_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X110_Y23_N30
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\);

-- Location: LCCOMB_X109_Y23_N24
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Airfryer_FSM_inst|Selector12~2_combout\) # 
-- (!\debouncer_enable_inst|dff_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|Selector12~2_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\);

-- Location: LCCOMB_X110_Y23_N10
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~50_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X110_Y23_N12
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~48_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~48_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~48_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~48_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X110_Y23_N14
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~47_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~47_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\)))))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~47_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~47_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X110_Y23_N16
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~46_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~46_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~46_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~46_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X110_Y23_N18
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~45_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\))))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~45_combout\) # 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\) # (GND))))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~45_combout\) # 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\) # (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~45_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X110_Y23_N20
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~44_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~44_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~44_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~44_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X110_Y23_N22
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X109_Y23_N22
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~70_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\);

-- Location: LCCOMB_X110_Y23_N24
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\);

-- Location: LCCOMB_X110_Y23_N0
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~54_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~54_combout\);

-- Location: LCCOMB_X110_Y23_N28
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\) # ((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~66_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\);

-- Location: LCCOMB_X109_Y23_N0
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~67_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\);

-- Location: LCCOMB_X110_Y23_N6
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~55_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~55_combout\);

-- Location: LCCOMB_X109_Y23_N10
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~68_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\);

-- Location: LCCOMB_X111_Y23_N4
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~56_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~56_combout\);

-- Location: LCCOMB_X109_Y23_N12
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~69_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\);

-- Location: LCCOMB_X110_Y23_N4
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~57_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~57_combout\);

-- Location: LCCOMB_X110_Y23_N2
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\) # ((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[40]~49_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\);

-- Location: LCCOMB_X111_Y23_N2
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\);

-- Location: LCCOMB_X109_Y20_N16
\Airfryer_FSM_inst|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Airfryer_FSM_inst|Selector14~1_combout\ = (\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((\debouncer_start_cooking_inst|dff_input~q\) # (\Airfryer_FSM_inst|s_currentState.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_start_cooking_inst|dff_input~q\,
	datab => \SW[5]~input_o\,
	datac => \Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datad => \SW[6]~input_o\,
	combout => \Airfryer_FSM_inst|Selector14~1_combout\);

-- Location: LCCOMB_X111_Y23_N0
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\Airfryer_FSM_inst|Selector14~1_combout\ & \debouncer_enable_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Airfryer_FSM_inst|Selector14~1_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X111_Y23_N6
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53_combout\);

-- Location: LCCOMB_X111_Y23_N8
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Airfryer_FSM_inst|Selector14~1_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Airfryer_FSM_inst|Selector14~1_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52_combout\);

-- Location: LCCOMB_X111_Y23_N16
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~0_combout\ = (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~1\ = CARRY((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~0_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X111_Y23_N18
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~2_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~1\ & (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\)))) # (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~1\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\)))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~3\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~1\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X111_Y23_N20
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~4_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~3\ & (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\)))) # (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~3\ & 
-- ((((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\) # (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\)))))
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~5\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~3\ & ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~3\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X111_Y23_N22
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~7_cout\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~57_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~57_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~5\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X111_Y23_N24
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\) # 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~56_combout\) # (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~56_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X111_Y23_N26
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~11_cout\ = CARRY((!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~55_combout\ & !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~55_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~9_cout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X111_Y23_N28
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~13_cout\ = CARRY((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~54_combout\) # 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\) # (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~11_cout\,
	cout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~13_cout\);

-- Location: LCCOMB_X111_Y23_N30
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\ = !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~13_cout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\);

-- Location: LCCOMB_X111_Y23_N12
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\ & (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~76_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~58_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~4_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\);

-- Location: LCCOMB_X111_Y23_N14
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\ & (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~53_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~52_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~0_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\);

-- Location: LCCOMB_X111_Y23_N10
\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\ & (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~71_combout\,
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~14_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|op_6~2_combout\,
	combout => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\);

-- Location: LCCOMB_X111_Y53_N24
\Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~0_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\ & (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\,
	combout => \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X111_Y53_N26
\Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~1_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\ & (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\ & 
-- \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\,
	combout => \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X111_Y53_N0
\Dividir_Temperatura_inst|Hex0_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\ = (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\ & (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\ & 
-- !\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\,
	combout => \Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X111_Y53_N14
\Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~2_combout\ = (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\) # ((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\) # 
-- (!\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\,
	combout => \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~2_combout\);

-- Location: LCCOMB_X111_Y53_N16
\Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~3_combout\ = \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\ $ (((\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\) # 
-- (\Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~60_combout\,
	datac => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~61_combout\,
	datad => \Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~59_combout\,
	combout => \Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~3_combout\);

-- Location: LCCOMB_X105_Y26_N4
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = (((\debouncer_enable_inst|dff_input~q\ & \Airfryer_FSM_inst|Selector13~0_combout\)))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY((\debouncer_enable_inst|dff_input~q\ & \Airfryer_FSM_inst|Selector13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_enable_inst|dff_input~q\,
	datab => \Airfryer_FSM_inst|Selector13~0_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X105_Y26_N6
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & (((\Airfryer_FSM_inst|Selector12~2_combout\) # 
-- (!\debouncer_enable_inst|dff_input~q\)))) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & (\debouncer_enable_inst|dff_input~q\ & (!\Airfryer_FSM_inst|Selector12~2_combout\)))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((\debouncer_enable_inst|dff_input~q\ & (!\Airfryer_FSM_inst|Selector12~2_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_enable_inst|dff_input~q\,
	datab => \Airfryer_FSM_inst|Selector12~2_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X105_Y26_N8
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\debouncer_enable_inst|dff_input~q\ & 
-- \Airfryer_FSM_inst|Selector11~0_combout\))))) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\debouncer_enable_inst|dff_input~q\ & \Airfryer_FSM_inst|Selector11~0_combout\)) # (GND)))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY(((\debouncer_enable_inst|dff_input~q\ & \Airfryer_FSM_inst|Selector11~0_combout\)) # 
-- (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_enable_inst|dff_input~q\,
	datab => \Airfryer_FSM_inst|Selector11~0_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X105_Y26_N10
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((!\Airfryer_FSM_inst|Selector10~1_combout\)) # 
-- (!\debouncer_enable_inst|dff_input~q\))) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((\debouncer_enable_inst|dff_input~q\ & \Airfryer_FSM_inst|Selector10~1_combout\)) # (GND)))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Airfryer_FSM_inst|Selector10~1_combout\)) # 
-- (!\debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_enable_inst|dff_input~q\,
	datab => \Airfryer_FSM_inst|Selector10~1_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X105_Y26_N12
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\debouncer_enable_inst|dff_input~q\ & 
-- (\Airfryer_FSM_inst|Selector9~2_combout\ & VCC))) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\debouncer_enable_inst|dff_input~q\ & \Airfryer_FSM_inst|Selector9~2_combout\)))))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\debouncer_enable_inst|dff_input~q\ & (\Airfryer_FSM_inst|Selector9~2_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_enable_inst|dff_input~q\,
	datab => \Airfryer_FSM_inst|Selector9~2_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X105_Y26_N14
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X105_Y26_N26
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~15_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~15_combout\);

-- Location: LCCOMB_X105_Y26_N24
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\ = (\Airfryer_FSM_inst|Selector9~2_combout\ & (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|Selector9~2_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\);

-- Location: LCCOMB_X105_Y26_N2
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~17_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~17_combout\);

-- Location: LCCOMB_X105_Y26_N28
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\ = (\Airfryer_FSM_inst|Selector10~1_combout\ & (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|Selector10~1_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\);

-- Location: LCCOMB_X105_Y26_N0
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\ = (\Airfryer_FSM_inst|Selector11~0_combout\ & (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|Selector11~0_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\);

-- Location: LCCOMB_X105_Y26_N18
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~19_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~19_combout\);

-- Location: LCCOMB_X110_Y26_N24
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Airfryer_FSM_inst|Selector12~2_combout\) # 
-- (!\debouncer_enable_inst|dff_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Airfryer_FSM_inst|Selector12~2_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\);

-- Location: LCCOMB_X105_Y26_N20
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\);

-- Location: LCCOMB_X105_Y26_N16
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~23_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~23_combout\);

-- Location: LCCOMB_X105_Y26_N22
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\ = (\Airfryer_FSM_inst|Selector13~0_combout\ & (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|Selector13~0_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\);

-- Location: LCCOMB_X110_Y26_N4
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ = (\Airfryer_FSM_inst|Selector12~2_combout\) # (!\debouncer_enable_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Airfryer_FSM_inst|Selector12~2_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\);

-- Location: LCCOMB_X110_Y26_N26
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[49]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[49]~24_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[49]~24_combout\);

-- Location: LCCOMB_X106_Y26_N8
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~0_combout\ = (((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[49]~24_combout\)))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~1\ = CARRY((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[49]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[49]~24_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X106_Y26_N10
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~1\ & (((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~23_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\)))) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~1\ & 
-- (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~23_combout\ & (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\)))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~3\ = CARRY((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~23_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\ & !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~23_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X106_Y26_N12
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~3\ & ((((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\))))) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~3\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\) # (GND))))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\) # 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X106_Y26_N14
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~6_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\ & (((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~5\)))) # 
-- (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\ & ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~19_combout\ & (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~5\)) 
-- # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~19_combout\ & ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~7\ = CARRY(((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~19_combout\)) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~19_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~5\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X106_Y26_N16
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~8_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~7\ & (((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~17_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\)))) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~7\ & 
-- ((((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~17_combout\) # (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\)))))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~9\ = CARRY((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~7\ & ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~17_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~17_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~7\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X106_Y26_N18
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~10_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~9\ & (((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~15_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\)))) # (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~9\ & 
-- (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~15_combout\ & (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\)))
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~11\ = CARRY((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~15_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\ & !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~15_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~9\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X106_Y26_N20
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ = \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~11\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X106_Y26_N4
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~14_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\);

-- Location: LCCOMB_X106_Y26_N0
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~10_combout\ & !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\);

-- Location: LCCOMB_X106_Y26_N2
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~16_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\);

-- Location: LCCOMB_X106_Y26_N22
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~8_combout\ & !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\);

-- Location: LCCOMB_X107_Y26_N26
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\);

-- Location: LCCOMB_X106_Y26_N6
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\) # ((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~18_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36_combout\);

-- Location: LCCOMB_X107_Y26_N12
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36_combout\)))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~27_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X107_Y26_N14
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & 
-- (((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\) # (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\)))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\ & 
-- (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~26_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X107_Y26_N16
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- (((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\) # (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\)))))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\) # (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~25_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X107_Y26_N18
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X106_Y26_N24
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~48_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\) # ((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~34_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~48_combout\);

-- Location: LCCOMB_X107_Y26_N20
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\);

-- Location: LCCOMB_X106_Y26_N26
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\) # ((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~35_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\);

-- Location: LCCOMB_X107_Y26_N10
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~33_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~33_combout\);

-- Location: LCCOMB_X107_Y26_N22
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~6_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~36_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\);

-- Location: LCCOMB_X108_Y26_N14
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~34_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~34_combout\);

-- Location: LCCOMB_X106_Y25_N18
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\);

-- Location: LCCOMB_X106_Y26_N28
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~37_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\) # ((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~37_combout\);

-- Location: LCCOMB_X106_Y25_N0
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~28_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~37_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X107_Y26_N24
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~35_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~35_combout\);

-- Location: LCCOMB_X106_Y26_N30
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~37_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~4_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~37_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51_combout\);

-- Location: LCCOMB_X107_Y26_N0
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~35_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51_combout\)))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~35_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~35_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X107_Y26_N2
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~34_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~34_combout\)))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~34_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~34_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X107_Y26_N4
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~33_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~33_combout\)))))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~33_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X107_Y26_N6
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~48_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~48_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y26_N8
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y26_N28
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~52_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\) # ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~49_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~52_combout\);

-- Location: LCCOMB_X108_Y26_N0
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~36_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~36_combout\);

-- Location: LCCOMB_X108_Y26_N10
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~37_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~37_combout\);

-- Location: LCCOMB_X108_Y26_N18
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\) # ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~50_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\);

-- Location: LCCOMB_X108_Y26_N4
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~38_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~38_combout\);

-- Location: LCCOMB_X107_Y26_N30
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51_combout\) # ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~51_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\);

-- Location: LCCOMB_X105_Y26_N30
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~38_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~38_combout\);

-- Location: LCCOMB_X108_Y26_N2
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\);

-- Location: LCCOMB_X108_Y26_N16
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~38_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~38_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~29_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X108_Y26_N12
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~39_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X108_Y26_N20
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~38_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~2_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~38_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55_combout\);

-- Location: LCCOMB_X108_Y26_N22
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~39_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55_combout\)))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~39_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X108_Y26_N24
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~38_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~38_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\)))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~38_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~38_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X108_Y26_N26
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~37_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~37_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\)))))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~37_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~37_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X108_Y26_N28
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~52_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~36_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~52_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~36_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y26_N30
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y26_N26
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~40_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X108_Y26_N6
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~56_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\) # ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~53_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~56_combout\);

-- Location: LCCOMB_X108_Y26_N8
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\) # ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~54_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\);

-- Location: LCCOMB_X109_Y26_N28
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~41_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X109_Y26_N30
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~42_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X109_Y26_N18
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55_combout\) # ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~55_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\);

-- Location: LCCOMB_X110_Y26_N8
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\);

-- Location: LCCOMB_X110_Y26_N6
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\) # ((!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[51]~20_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\);

-- Location: LCCOMB_X110_Y26_N30
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~30_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X110_Y26_N2
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~43_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~43_combout\);

-- Location: LCCOMB_X110_Y26_N28
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~0_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[58]~39_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X109_Y26_N0
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~43_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~43_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~43_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X109_Y26_N2
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~42_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\)))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X109_Y26_N4
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~41_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~41_combout\)))))
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X109_Y26_N6
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~40_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~56_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~56_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y26_N8
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y26_N16
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~60_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\) # ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~57_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~60_combout\);

-- Location: LCCOMB_X110_Y26_N0
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~44_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~44_combout\);

-- Location: LCCOMB_X110_Y26_N12
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~45_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~45_combout\);

-- Location: LCCOMB_X109_Y26_N22
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~61_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\) # ((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~58_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~61_combout\);

-- Location: LCCOMB_X110_Y26_N10
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~62_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59_combout\) # ((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~62_combout\);

-- Location: LCCOMB_X109_Y26_N24
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~46_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~46_combout\);

-- Location: LCCOMB_X111_Y26_N24
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\Airfryer_FSM_inst|Selector14~1_combout\ & \debouncer_enable_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Airfryer_FSM_inst|Selector14~1_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X111_Y26_N8
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~32_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~32_combout\);

-- Location: LCCOMB_X111_Y26_N18
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~31_combout\ = (\Airfryer_FSM_inst|Selector14~1_combout\ & (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector14~1_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~31_combout\);

-- Location: LCCOMB_X111_Y26_N10
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~14_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~32_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~32_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~31_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~14_combout\);

-- Location: LCCOMB_X111_Y26_N2
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~40_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~31_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~31_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~40_combout\);

-- Location: LCCOMB_X111_Y26_N4
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~63_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~40_combout\) # ((\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- !\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~40_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~63_combout\);

-- Location: LCCOMB_X111_Y26_N22
\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~33_combout\ = (!\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	combout => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~33_combout\);

-- Location: LCCOMB_X111_Y26_N12
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~33_combout\) # 
-- (\Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~33_combout\,
	datad => \Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~40_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X111_Y26_N28
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~47_combout\ = (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~47_combout\);

-- Location: LCCOMB_X110_Y26_N14
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~63_combout\) # 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~63_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~47_combout\,
	datad => VCC,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X110_Y26_N16
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~62_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~46_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~62_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~46_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X110_Y26_N18
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~45_combout\) # (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~45_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~61_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X110_Y26_N20
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~60_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~44_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~60_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~44_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y26_N22
\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y26_N16
\Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~0_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X112_Y26_N26
\Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~1_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X112_Y26_N28
\Dividir_Temperatura_inst|Hex1_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex1_decoder|Equal7~0_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Hex1_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X112_Y26_N10
\Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~2_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~2_combout\);

-- Location: LCCOMB_X112_Y26_N24
\Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~3_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~3_combout\);

-- Location: LCCOMB_X112_Y26_N2
\Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~4_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~4_combout\);

-- Location: LCCOMB_X112_Y26_N12
\Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~5_combout\ = (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ ((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X108_Y22_N0
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = (((\Airfryer_FSM_inst|Selector13~0_combout\ & \debouncer_enable_inst|dff_input~q\)))
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY((\Airfryer_FSM_inst|Selector13~0_combout\ & \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector13~0_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => VCC,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X108_Y22_N2
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & (((\Airfryer_FSM_inst|Selector12~2_combout\) # 
-- (!\debouncer_enable_inst|dff_input~q\)))) # (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & (!\Airfryer_FSM_inst|Selector12~2_combout\ & (\debouncer_enable_inst|dff_input~q\)))
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Airfryer_FSM_inst|Selector12~2_combout\ & (\debouncer_enable_inst|dff_input~q\ & 
-- !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector12~2_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X108_Y22_N4
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\Airfryer_FSM_inst|Selector11~0_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))))) # (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\Airfryer_FSM_inst|Selector11~0_combout\ & \debouncer_enable_inst|dff_input~q\)) # (GND)))
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY(((\Airfryer_FSM_inst|Selector11~0_combout\ & \debouncer_enable_inst|dff_input~q\)) # 
-- (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector11~0_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X108_Y22_N6
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((!\debouncer_enable_inst|dff_input~q\)) # 
-- (!\Airfryer_FSM_inst|Selector10~1_combout\))) # (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((\Airfryer_FSM_inst|Selector10~1_combout\ & \debouncer_enable_inst|dff_input~q\)) # (GND)))
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\debouncer_enable_inst|dff_input~q\)) # 
-- (!\Airfryer_FSM_inst|Selector10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector10~1_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X108_Y22_N8
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\Airfryer_FSM_inst|Selector9~2_combout\ & 
-- (\debouncer_enable_inst|dff_input~q\ & VCC))) # (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\Airfryer_FSM_inst|Selector9~2_combout\ & \debouncer_enable_inst|dff_input~q\)))))
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\Airfryer_FSM_inst|Selector9~2_combout\ & (\debouncer_enable_inst|dff_input~q\ & 
-- !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Airfryer_FSM_inst|Selector9~2_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X108_Y22_N10
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X109_Y22_N6
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & 
-- !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X108_Y22_N28
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\debouncer_enable_inst|dff_input~q\ & 
-- \Airfryer_FSM_inst|Selector9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datac => \Airfryer_FSM_inst|Selector9~2_combout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X108_Y22_N14
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\debouncer_enable_inst|dff_input~q\ & 
-- \Airfryer_FSM_inst|Selector10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \debouncer_enable_inst|dff_input~q\,
	datad => \Airfryer_FSM_inst|Selector10~1_combout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X109_Y22_N0
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & 
-- !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X109_Y22_N10
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Airfryer_FSM_inst|Selector11~0_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Airfryer_FSM_inst|Selector11~0_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X109_Y22_N4
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X109_Y22_N30
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Airfryer_FSM_inst|Selector12~2_combout\) # 
-- (!\debouncer_enable_inst|dff_input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Airfryer_FSM_inst|Selector12~2_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X108_Y22_N20
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & 
-- !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X109_Y22_N12
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Airfryer_FSM_inst|Selector13~0_combout\ & 
-- \debouncer_enable_inst|dff_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Airfryer_FSM_inst|Selector13~0_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X109_Y22_N8
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & 
-- !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X109_Y22_N28
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ = (\Airfryer_FSM_inst|Selector12~2_combout\) # (!\debouncer_enable_inst|dff_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Airfryer_FSM_inst|Selector12~2_combout\,
	datad => \debouncer_enable_inst|dff_input~q\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\);

-- Location: LCCOMB_X109_Y22_N2
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X109_Y22_N14
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~1_cout\ = CARRY((\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X109_Y22_N16
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X109_Y22_N18
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- ((\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X109_Y22_N20
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~7_cout\ = CARRY(((!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & 
-- !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X109_Y22_N22
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~9_cout\ = CARRY((!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~7_cout\ & ((\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~7_cout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X109_Y22_N24
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~11_cout\ = CARRY((!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~9_cout\,
	cout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X109_Y22_N26
\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\ = \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~11_cout\,
	combout => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X114_Y19_N20
\Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~0_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X114_Y19_N2
\Dividir_Temperatura_inst|Hex2_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex2_decoder|Equal7~0_combout\ = (!\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Hex2_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X108_Y22_N22
\Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~1_combout\ = (!\Airfryer_FSM_inst|Selector11~0_combout\ & (!\Airfryer_FSM_inst|Selector13~0_combout\ & !\Airfryer_FSM_inst|Selector12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Airfryer_FSM_inst|Selector11~0_combout\,
	datac => \Airfryer_FSM_inst|Selector13~0_combout\,
	datad => \Airfryer_FSM_inst|Selector12~2_combout\,
	combout => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~1_combout\);

-- Location: LCCOMB_X108_Y22_N24
\Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~2_combout\ = (\Airfryer_FSM_inst|Selector9~2_combout\ & (\debouncer_enable_inst|dff_input~q\ & ((\Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~1_combout\) # 
-- (!\Airfryer_FSM_inst|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~1_combout\,
	datab => \Airfryer_FSM_inst|Selector9~2_combout\,
	datac => \debouncer_enable_inst|dff_input~q\,
	datad => \Airfryer_FSM_inst|Selector10~1_combout\,
	combout => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y19_N0
\Dividir_Temperatura_inst|Hex2_decoder|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[3]~3_combout\ = (\Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X108_Y22_N30
\Dividir_Temperatura_inst|Hex2_decoder|decOut_n[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[6]~4_combout\ = (\Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~1_combout\) # (((!\Airfryer_FSM_inst|Selector10~1_combout\) # (!\debouncer_enable_inst|dff_input~q\)) # 
-- (!\Airfryer_FSM_inst|Selector9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~1_combout\,
	datab => \Airfryer_FSM_inst|Selector9~2_combout\,
	datac => \debouncer_enable_inst|dff_input~q\,
	datad => \Airfryer_FSM_inst|Selector10~1_combout\,
	combout => \Dividir_Temperatura_inst|Hex2_decoder|decOut_n[6]~4_combout\);

-- Location: LCCOMB_X90_Y4_N24
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \TimeModule_inst|Counter_inst|s_cntValue\(2) $ (VCC)
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\TimeModule_inst|Counter_inst|s_cntValue\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => VCC,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X90_Y4_N26
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(3) & (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\TimeModule_inst|Counter_inst|s_cntValue\(3) & (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\TimeModule_inst|Counter_inst|s_cntValue\(3) & !\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => VCC,
	cin => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X90_Y4_N28
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(4) & (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\TimeModule_inst|Counter_inst|s_cntValue\(4) & (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\TimeModule_inst|Counter_inst|s_cntValue\(4) & !\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(4),
	datad => VCC,
	cin => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X90_Y4_N30
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X91_Y4_N2
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ = (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\);

-- Location: LCCOMB_X91_Y4_N0
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X90_Y4_N14
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\) # (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\) # (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datad => VCC,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X90_Y4_N12
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(4) & \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(4),
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X90_Y4_N2
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\ = (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: LCCOMB_X91_Y4_N4
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\);

-- Location: LCCOMB_X90_Y4_N0
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \TimeModule_inst|Counter_inst|s_cntValue\(3),
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\);

-- Location: LCCOMB_X90_Y4_N6
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ = (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: LCCOMB_X90_Y4_N4
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(2) & \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeModule_inst|Counter_inst|s_cntValue\(2),
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\);

-- Location: LCCOMB_X90_Y4_N16
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\) # 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\)))) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ & 
-- (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\)))
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ & (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\ & 
-- !\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\,
	datad => VCC,
	cin => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X90_Y4_N18
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\) # 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\)))) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\) # 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\)))))
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\) # 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\,
	datad => VCC,
	cin => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X90_Y4_N20
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\ & 
-- !\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\,
	datad => VCC,
	cin => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X90_Y4_N22
\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X91_Y4_N30
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\TimeModule_inst|Counter_inst|s_cntValue\(1)))) # 
-- (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\);

-- Location: LCCOMB_X90_Y4_N10
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\) # 
-- ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\)))) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (((\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\);

-- Location: LCCOMB_X90_Y4_N8
\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\) # 
-- ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\)))) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (((\TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\);

-- Location: LCCOMB_X89_Y4_N0
\TimeModule_inst|Hex4_decoder|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex4_decoder|decOut_n[0]~0_combout\ = (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ $ (\TimeModule_inst|Counter_inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	combout => \TimeModule_inst|Hex4_decoder|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X89_Y4_N22
\TimeModule_inst|Hex4_decoder|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex4_decoder|decOut_n[1]~1_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ & (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ $ (\TimeModule_inst|Counter_inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	combout => \TimeModule_inst|Hex4_decoder|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X89_Y4_N28
\TimeModule_inst|Hex4_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex4_decoder|Equal7~0_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ & 
-- (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & !\TimeModule_inst|Counter_inst|s_cntValue\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	combout => \TimeModule_inst|Hex4_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X89_Y4_N26
\TimeModule_inst|Hex4_decoder|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex4_decoder|decOut_n[3]~2_combout\ = (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(0))) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ $ (\TimeModule_inst|Counter_inst|s_cntValue\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	combout => \TimeModule_inst|Hex4_decoder|decOut_n[3]~2_combout\);

-- Location: LCCOMB_X89_Y4_N20
\TimeModule_inst|Hex4_decoder|decOut_n[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex4_decoder|decOut_n[4]~3_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & (((!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & 
-- \TimeModule_inst|Counter_inst|s_cntValue\(0))))) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ & 
-- (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\)) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ & ((\TimeModule_inst|Counter_inst|s_cntValue\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	combout => \TimeModule_inst|Hex4_decoder|decOut_n[4]~3_combout\);

-- Location: LCCOMB_X89_Y4_N2
\TimeModule_inst|Hex4_decoder|decOut_n[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex4_decoder|decOut_n[5]~4_combout\ = (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- ((\TimeModule_inst|Counter_inst|s_cntValue\(0)) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\))) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	combout => \TimeModule_inst|Hex4_decoder|decOut_n[5]~4_combout\);

-- Location: LCCOMB_X89_Y4_N16
\TimeModule_inst|Hex4_decoder|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex4_decoder|decOut_n[6]~5_combout\ = (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # 
-- ((\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(0))))) # (!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- (\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ $ ((!\TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\,
	datac => \TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(0),
	combout => \TimeModule_inst|Hex4_decoder|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X92_Y4_N6
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \TimeModule_inst|Counter_inst|s_cntValue\(2) $ (VCC)
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\TimeModule_inst|Counter_inst|s_cntValue\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => VCC,
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X92_Y4_N8
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(3) & (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\TimeModule_inst|Counter_inst|s_cntValue\(3) & (!\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\TimeModule_inst|Counter_inst|s_cntValue\(3) & !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => VCC,
	cin => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X92_Y4_N10
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(4) & (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\TimeModule_inst|Counter_inst|s_cntValue\(4) & (!\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\TimeModule_inst|Counter_inst|s_cntValue\(4) & !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(4),
	datad => VCC,
	cin => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X92_Y4_N12
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X92_Y4_N4
\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \TimeModule_inst|Counter_inst|s_cntValue\(4),
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X92_Y4_N26
\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X92_Y4_N20
\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(3),
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X92_Y4_N18
\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X92_Y4_N2
\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X92_Y4_N0
\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(2),
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X91_Y4_N26
\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (!\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X91_Y4_N24
\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \TimeModule_inst|Counter_inst|s_cntValue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X91_Y4_N14
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\) # (\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datab => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datad => VCC,
	cout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X91_Y4_N16
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (!\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & 
-- !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datad => VCC,
	cin => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X91_Y4_N18
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & 
-- ((\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\) # (\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datab => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datad => VCC,
	cin => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X91_Y4_N20
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & 
-- !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datad => VCC,
	cin => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X91_Y4_N22
\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X91_Y4_N28
\TimeModule_inst|Hex5_decoder|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex5_decoder|decOut_n[0]~0_combout\ = (!\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Hex5_decoder|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X91_Y4_N12
\TimeModule_inst|Hex5_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex5_decoder|Equal7~0_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Hex5_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X92_Y4_N28
\TimeModule_inst|Hex5_decoder|decOut_n[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex5_decoder|decOut_n[4]~1_combout\ = (\TimeModule_inst|Counter_inst|s_cntValue\(2) & (((!\TimeModule_inst|Counter_inst|s_cntValue\(1) & \TimeModule_inst|Counter_inst|s_cntValue\(4))) # (!\TimeModule_inst|Counter_inst|s_cntValue\(3)))) # 
-- (!\TimeModule_inst|Counter_inst|s_cntValue\(2) & ((\TimeModule_inst|Counter_inst|s_cntValue\(4) & ((\TimeModule_inst|Counter_inst|s_cntValue\(3)))) # (!\TimeModule_inst|Counter_inst|s_cntValue\(4) & ((!\TimeModule_inst|Counter_inst|s_cntValue\(3)) # 
-- (!\TimeModule_inst|Counter_inst|s_cntValue\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(2),
	datab => \TimeModule_inst|Counter_inst|s_cntValue\(1),
	datac => \TimeModule_inst|Counter_inst|s_cntValue\(4),
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(3),
	combout => \TimeModule_inst|Hex5_decoder|decOut_n[4]~1_combout\);

-- Location: LCCOMB_X91_Y4_N10
\TimeModule_inst|Hex5_decoder|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex5_decoder|decOut_n[3]~2_combout\ = (\TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \TimeModule_inst|Hex5_decoder|decOut_n[3]~2_combout\);

-- Location: LCCOMB_X92_Y4_N22
\TimeModule_inst|Hex5_decoder|decOut_n[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeModule_inst|Hex5_decoder|decOut_n[6]~3_combout\ = ((!\TimeModule_inst|Counter_inst|s_cntValue\(2) & !\TimeModule_inst|Counter_inst|s_cntValue\(3))) # (!\TimeModule_inst|Counter_inst|s_cntValue\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeModule_inst|Counter_inst|s_cntValue\(2),
	datac => \TimeModule_inst|Counter_inst|s_cntValue\(4),
	datad => \TimeModule_inst|Counter_inst|s_cntValue\(3),
	combout => \TimeModule_inst|Hex5_decoder|decOut_n[6]~3_combout\);

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


