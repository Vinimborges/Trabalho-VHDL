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
-- Generated on "01/25/2025 21:21:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Controlador7seg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Controlador7seg_vhd_vec_tst IS
END Controlador7seg_vhd_vec_tst;
ARCHITECTURE Controlador7seg_arch OF Controlador7seg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clock_1Hz_in : STD_LOGIC;
SIGNAL seg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Controlador7seg
	PORT (
	bcd_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clock_1Hz_in : IN STD_LOGIC;
	seg1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Controlador7seg
	PORT MAP (
-- list connections between master ports and signals
	bcd_in => bcd_in,
	clock_1Hz_in => clock_1Hz_in,
	seg1 => seg1,
	seg2 => seg2,
	seg3 => seg3,
	seg4 => seg4
	);
-- bcd_in[15]
t_prcs_bcd_in_15: PROCESS
BEGIN
	bcd_in(15) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_15;
-- bcd_in[14]
t_prcs_bcd_in_14: PROCESS
BEGIN
	bcd_in(14) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_14;
-- bcd_in[13]
t_prcs_bcd_in_13: PROCESS
BEGIN
	bcd_in(13) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_13;
-- bcd_in[12]
t_prcs_bcd_in_12: PROCESS
BEGIN
	bcd_in(12) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_12;
-- bcd_in[11]
t_prcs_bcd_in_11: PROCESS
BEGIN
	bcd_in(11) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_11;
-- bcd_in[10]
t_prcs_bcd_in_10: PROCESS
BEGIN
	bcd_in(10) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_10;
-- bcd_in[9]
t_prcs_bcd_in_9: PROCESS
BEGIN
	bcd_in(9) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_9;
-- bcd_in[8]
t_prcs_bcd_in_8: PROCESS
BEGIN
	bcd_in(8) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_8;
-- bcd_in[7]
t_prcs_bcd_in_7: PROCESS
BEGIN
	bcd_in(7) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_7;
-- bcd_in[6]
t_prcs_bcd_in_6: PROCESS
BEGIN
	bcd_in(6) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_6;
-- bcd_in[5]
t_prcs_bcd_in_5: PROCESS
BEGIN
	bcd_in(5) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_5;
-- bcd_in[4]
t_prcs_bcd_in_4: PROCESS
BEGIN
	bcd_in(4) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_4;
-- bcd_in[3]
t_prcs_bcd_in_3: PROCESS
BEGIN
	bcd_in(3) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_3;
-- bcd_in[2]
t_prcs_bcd_in_2: PROCESS
BEGIN
	bcd_in(2) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_2;
-- bcd_in[1]
t_prcs_bcd_in_1: PROCESS
BEGIN
	bcd_in(1) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_1;
-- bcd_in[0]
t_prcs_bcd_in_0: PROCESS
BEGIN
	bcd_in(0) <= '0';
WAIT;
END PROCESS t_prcs_bcd_in_0;

-- clock_1Hz_in
t_prcs_clock_1Hz_in: PROCESS
BEGIN
	clock_1Hz_in <= '0';
WAIT;
END PROCESS t_prcs_clock_1Hz_in;
END Controlador7seg_arch;
