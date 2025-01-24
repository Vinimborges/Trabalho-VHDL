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
-- Generated on "01/24/2025 17:04:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Trabalho
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Trabalho_vhd_vec_tst IS
END Trabalho_vhd_vec_tst;
ARCHITECTURE Trabalho_arch OF Trabalho_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL controle_BCD : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL saida_BCD : STD_LOGIC;
SIGNAL valor_Memoria : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL valor_OPCODE : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL valor_PC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL valor_Y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Trabalho
	PORT (
	CLK : IN STD_LOGIC;
	controle_BCD : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	saida_BCD : OUT STD_LOGIC;
	valor_Memoria : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	valor_OPCODE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	valor_PC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	valor_Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Trabalho
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	controle_BCD => controle_BCD,
	reset => reset,
	saida_BCD => saida_BCD,
	valor_Memoria => valor_Memoria,
	valor_OPCODE => valor_OPCODE,
	valor_PC => valor_PC,
	valor_Y => valor_Y
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END Trabalho_arch;
