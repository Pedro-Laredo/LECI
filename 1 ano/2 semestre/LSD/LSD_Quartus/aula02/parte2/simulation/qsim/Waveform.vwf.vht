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
-- Generated on "02/27/2024 11:27:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux2_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux2_1_vhd_vec_tst IS
END Mux2_1_vhd_vec_tst;
ARCHITECTURE Mux2_1_arch OF Mux2_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data0 : STD_LOGIC;
SIGNAL data1 : STD_LOGIC;
SIGNAL output : STD_LOGIC;
SIGNAL sel : STD_LOGIC;
COMPONENT Mux2_1
	PORT (
	data0 : IN STD_LOGIC;
	data1 : IN STD_LOGIC;
	output : OUT STD_LOGIC;
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux2_1
	PORT MAP (
-- list connections between master ports and signals
	data0 => data0,
	data1 => data1,
	output => output,
	sel => sel
	);

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '1';
	WAIT FOR 40000 ps;
	sel <= '0';
	WAIT FOR 80000 ps;
	sel <= '1';
WAIT;
END PROCESS t_prcs_sel;

-- data0
t_prcs_data0: PROCESS
BEGIN
	data0 <= '1';
	WAIT FOR 20000 ps;
	data0 <= '0';
	WAIT FOR 40000 ps;
	data0 <= '1';
	WAIT FOR 20000 ps;
	data0 <= '0';
	WAIT FOR 40000 ps;
	data0 <= '1';
WAIT;
END PROCESS t_prcs_data0;

-- data1
t_prcs_data1: PROCESS
BEGIN
	data1 <= '0';
	WAIT FOR 10000 ps;
	data1 <= '1';
	WAIT FOR 10000 ps;
	data1 <= '0';
	WAIT FOR 10000 ps;
	data1 <= '1';
	WAIT FOR 20000 ps;
	data1 <= '0';
	WAIT FOR 10000 ps;
	data1 <= '1';
	WAIT FOR 10000 ps;
	data1 <= '0';
	WAIT FOR 50000 ps;
	data1 <= '1';
WAIT;
END PROCESS t_prcs_data1;
END Mux2_1_arch;
