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
-- Generated on "01/25/2025 17:44:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin2BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin2BCD_vhd_vec_tst IS
END Bin2BCD_vhd_vec_tst;
ARCHITECTURE Bin2BCD_arch OF Bin2BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL bin_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL tesr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL tesr2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Bin2BCD
	PORT (
	bcd_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	bin_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	tesr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	tesr2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin2BCD
	PORT MAP (
-- list connections between master ports and signals
	bcd_out => bcd_out,
	bin_in => bin_in,
	tesr => tesr,
	tesr2 => tesr2
	);
-- bin_in[7]
t_prcs_bin_in_7: PROCESS
BEGIN
	bin_in(7) <= '0';
WAIT;
END PROCESS t_prcs_bin_in_7;
-- bin_in[6]
t_prcs_bin_in_6: PROCESS
BEGIN
	bin_in(6) <= '0';
WAIT;
END PROCESS t_prcs_bin_in_6;
-- bin_in[5]
t_prcs_bin_in_5: PROCESS
BEGIN
	bin_in(5) <= '0';
WAIT;
END PROCESS t_prcs_bin_in_5;
-- bin_in[4]
t_prcs_bin_in_4: PROCESS
BEGIN
	bin_in(4) <= '0';
WAIT;
END PROCESS t_prcs_bin_in_4;
-- bin_in[3]
t_prcs_bin_in_3: PROCESS
BEGIN
	bin_in(3) <= '0';
WAIT;
END PROCESS t_prcs_bin_in_3;
-- bin_in[2]
t_prcs_bin_in_2: PROCESS
BEGIN
	bin_in(2) <= '0';
WAIT;
END PROCESS t_prcs_bin_in_2;
-- bin_in[1]
t_prcs_bin_in_1: PROCESS
BEGIN
	bin_in(1) <= '0';
WAIT;
END PROCESS t_prcs_bin_in_1;
-- bin_in[0]
t_prcs_bin_in_0: PROCESS
BEGIN
	bin_in(0) <= '0';
WAIT;
END PROCESS t_prcs_bin_in_0;
END Bin2BCD_arch;
