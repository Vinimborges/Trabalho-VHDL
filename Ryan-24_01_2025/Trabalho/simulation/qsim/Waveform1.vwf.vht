-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/24/2025 11:07:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Controle
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Controle_vhd_vec_tst IS
END Controle_vhd_vec_tst;
ARCHITECTURE Controle_arch OF Controle_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ATT_out : STD_LOGIC;
SIGNAL CARREGA_out : STD_LOGIC;
SIGNAL clk_1Hz_in : STD_LOGIC;
SIGNAL LER_out : STD_LOGIC;
SIGNAL OPCODE_in : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OPCODE_out : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ZERA_out : STD_LOGIC;
COMPONENT Controle
	PORT (
	ATT_out : BUFFER STD_LOGIC;
	CARREGA_out : BUFFER STD_LOGIC;
	clk_1Hz_in : IN STD_LOGIC;
	LER_out : BUFFER STD_LOGIC;
	OPCODE_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	OPCODE_out : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	ZERA_out : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Controle
	PORT MAP (
-- list connections between master ports and signals
	ATT_out => ATT_out,
	CARREGA_out => CARREGA_out,
	clk_1Hz_in => clk_1Hz_in,
	LER_out => LER_out,
	OPCODE_in => OPCODE_in,
	OPCODE_out => OPCODE_out,
	ZERA_out => ZERA_out
	);

-- clk_1Hz_in
t_prcs_clk_1Hz_in: PROCESS
BEGIN
LOOP
	clk_1Hz_in <= '0';
	WAIT FOR 10000 ps;
	clk_1Hz_in <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_1Hz_in;
-- OPCODE_in[2]
t_prcs_OPCODE_in_2: PROCESS
BEGIN
	OPCODE_in(2) <= '0';
WAIT;
END PROCESS t_prcs_OPCODE_in_2;
-- OPCODE_in[1]
t_prcs_OPCODE_in_1: PROCESS
BEGIN
	OPCODE_in(1) <= '0';
WAIT;
END PROCESS t_prcs_OPCODE_in_1;
-- OPCODE_in[0]
t_prcs_OPCODE_in_0: PROCESS
BEGIN
	OPCODE_in(0) <= '0';
WAIT;
END PROCESS t_prcs_OPCODE_in_0;
END Controle_arch;
