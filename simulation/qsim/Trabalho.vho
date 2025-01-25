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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "01/24/2025 22:18:58"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Trabalho IS
    PORT (
	reset : IN std_logic;
	CLK : IN std_logic;
	controle_BCD : BUFFER std_logic;
	saida_BCD : BUFFER std_logic;
	valor_PC : BUFFER std_logic_vector(3 DOWNTO 0);
	valor_Memoria : BUFFER std_logic_vector(15 DOWNTO 0);
	valor_OPCODE : BUFFER std_logic_vector(2 DOWNTO 0);
	valor_Y : BUFFER std_logic_vector(7 DOWNTO 0);
	valor_X : BUFFER std_logic_vector(7 DOWNTO 0);
	valor_ULA : BUFFER std_logic_vector(7 DOWNTO 0);
	valor_CLOCK : BUFFER std_logic
	);
END Trabalho;

ARCHITECTURE structure OF Trabalho IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_controle_BCD : std_logic;
SIGNAL ww_saida_BCD : std_logic;
SIGNAL ww_valor_PC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valor_Memoria : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_valor_OPCODE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_valor_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_valor_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_valor_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_valor_CLOCK : std_logic;
SIGNAL \controle_BCD~output_o\ : std_logic;
SIGNAL \saida_BCD~output_o\ : std_logic;
SIGNAL \valor_PC[0]~output_o\ : std_logic;
SIGNAL \valor_PC[1]~output_o\ : std_logic;
SIGNAL \valor_PC[2]~output_o\ : std_logic;
SIGNAL \valor_PC[3]~output_o\ : std_logic;
SIGNAL \valor_Memoria[0]~output_o\ : std_logic;
SIGNAL \valor_Memoria[1]~output_o\ : std_logic;
SIGNAL \valor_Memoria[2]~output_o\ : std_logic;
SIGNAL \valor_Memoria[3]~output_o\ : std_logic;
SIGNAL \valor_Memoria[4]~output_o\ : std_logic;
SIGNAL \valor_Memoria[5]~output_o\ : std_logic;
SIGNAL \valor_Memoria[6]~output_o\ : std_logic;
SIGNAL \valor_Memoria[7]~output_o\ : std_logic;
SIGNAL \valor_Memoria[8]~output_o\ : std_logic;
SIGNAL \valor_Memoria[9]~output_o\ : std_logic;
SIGNAL \valor_Memoria[10]~output_o\ : std_logic;
SIGNAL \valor_Memoria[11]~output_o\ : std_logic;
SIGNAL \valor_Memoria[12]~output_o\ : std_logic;
SIGNAL \valor_Memoria[13]~output_o\ : std_logic;
SIGNAL \valor_Memoria[14]~output_o\ : std_logic;
SIGNAL \valor_Memoria[15]~output_o\ : std_logic;
SIGNAL \valor_OPCODE[0]~output_o\ : std_logic;
SIGNAL \valor_OPCODE[1]~output_o\ : std_logic;
SIGNAL \valor_OPCODE[2]~output_o\ : std_logic;
SIGNAL \valor_Y[0]~output_o\ : std_logic;
SIGNAL \valor_Y[1]~output_o\ : std_logic;
SIGNAL \valor_Y[2]~output_o\ : std_logic;
SIGNAL \valor_Y[3]~output_o\ : std_logic;
SIGNAL \valor_Y[4]~output_o\ : std_logic;
SIGNAL \valor_Y[5]~output_o\ : std_logic;
SIGNAL \valor_Y[6]~output_o\ : std_logic;
SIGNAL \valor_Y[7]~output_o\ : std_logic;
SIGNAL \valor_X[0]~output_o\ : std_logic;
SIGNAL \valor_X[1]~output_o\ : std_logic;
SIGNAL \valor_X[2]~output_o\ : std_logic;
SIGNAL \valor_X[3]~output_o\ : std_logic;
SIGNAL \valor_X[4]~output_o\ : std_logic;
SIGNAL \valor_X[5]~output_o\ : std_logic;
SIGNAL \valor_X[6]~output_o\ : std_logic;
SIGNAL \valor_X[7]~output_o\ : std_logic;
SIGNAL \valor_ULA[0]~output_o\ : std_logic;
SIGNAL \valor_ULA[1]~output_o\ : std_logic;
SIGNAL \valor_ULA[2]~output_o\ : std_logic;
SIGNAL \valor_ULA[3]~output_o\ : std_logic;
SIGNAL \valor_ULA[4]~output_o\ : std_logic;
SIGNAL \valor_ULA[5]~output_o\ : std_logic;
SIGNAL \valor_ULA[6]~output_o\ : std_logic;
SIGNAL \valor_ULA[7]~output_o\ : std_logic;
SIGNAL \valor_CLOCK~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \clock_div|Add0~0_combout\ : std_logic;
SIGNAL \clock_div|Add0~1\ : std_logic;
SIGNAL \clock_div|Add0~2_combout\ : std_logic;
SIGNAL \clock_div|Add0~3\ : std_logic;
SIGNAL \clock_div|Add0~4_combout\ : std_logic;
SIGNAL \clock_div|Add0~5\ : std_logic;
SIGNAL \clock_div|Add0~6_combout\ : std_logic;
SIGNAL \clock_div|Add0~7\ : std_logic;
SIGNAL \clock_div|Add0~8_combout\ : std_logic;
SIGNAL \clock_div|Add0~9\ : std_logic;
SIGNAL \clock_div|Add0~10_combout\ : std_logic;
SIGNAL \clock_div|Add0~11\ : std_logic;
SIGNAL \clock_div|Add0~12_combout\ : std_logic;
SIGNAL \clock_div|Add0~13\ : std_logic;
SIGNAL \clock_div|Add0~14_combout\ : std_logic;
SIGNAL \clock_div|Add0~15\ : std_logic;
SIGNAL \clock_div|Add0~16_combout\ : std_logic;
SIGNAL \clock_div|Add0~17\ : std_logic;
SIGNAL \clock_div|Add0~18_combout\ : std_logic;
SIGNAL \clock_div|Add0~19\ : std_logic;
SIGNAL \clock_div|Add0~20_combout\ : std_logic;
SIGNAL \clock_div|Add0~21\ : std_logic;
SIGNAL \clock_div|Add0~22_combout\ : std_logic;
SIGNAL \clock_div|Add0~23\ : std_logic;
SIGNAL \clock_div|Add0~24_combout\ : std_logic;
SIGNAL \clock_div|Add0~25\ : std_logic;
SIGNAL \clock_div|Add0~26_combout\ : std_logic;
SIGNAL \clock_div|Add0~27\ : std_logic;
SIGNAL \clock_div|Add0~28_combout\ : std_logic;
SIGNAL \clock_div|Add0~29\ : std_logic;
SIGNAL \clock_div|Add0~30_combout\ : std_logic;
SIGNAL \clock_div|Add0~31\ : std_logic;
SIGNAL \clock_div|Add0~32_combout\ : std_logic;
SIGNAL \clock_div|Add0~33\ : std_logic;
SIGNAL \clock_div|Add0~34_combout\ : std_logic;
SIGNAL \clock_div|Add0~35\ : std_logic;
SIGNAL \clock_div|Add0~36_combout\ : std_logic;
SIGNAL \clock_div|Add0~37\ : std_logic;
SIGNAL \clock_div|Add0~38_combout\ : std_logic;
SIGNAL \clock_div|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div|Add0~39\ : std_logic;
SIGNAL \clock_div|Add0~40_combout\ : std_logic;
SIGNAL \clock_div|Add0~41\ : std_logic;
SIGNAL \clock_div|Add0~42_combout\ : std_logic;
SIGNAL \clock_div|Add0~43\ : std_logic;
SIGNAL \clock_div|Add0~44_combout\ : std_logic;
SIGNAL \clock_div|Add0~45\ : std_logic;
SIGNAL \clock_div|Add0~46_combout\ : std_logic;
SIGNAL \clock_div|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div|Add0~47\ : std_logic;
SIGNAL \clock_div|Add0~48_combout\ : std_logic;
SIGNAL \clock_div|Add0~49\ : std_logic;
SIGNAL \clock_div|Add0~50_combout\ : std_logic;
SIGNAL \clock_div|Add0~51\ : std_logic;
SIGNAL \clock_div|Add0~52_combout\ : std_logic;
SIGNAL \clock_div|Add0~53\ : std_logic;
SIGNAL \clock_div|Add0~54_combout\ : std_logic;
SIGNAL \clock_div|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div|Add0~55\ : std_logic;
SIGNAL \clock_div|Add0~56_combout\ : std_logic;
SIGNAL \clock_div|Add0~57\ : std_logic;
SIGNAL \clock_div|Add0~58_combout\ : std_logic;
SIGNAL \clock_div|Add0~59\ : std_logic;
SIGNAL \clock_div|Add0~60_combout\ : std_logic;
SIGNAL \clock_div|Add0~61\ : std_logic;
SIGNAL \clock_div|Add0~62_combout\ : std_logic;
SIGNAL \clock_div|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div|contador~0_combout\ : std_logic;
SIGNAL \clock_div|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div|led_status~0_combout\ : std_logic;
SIGNAL \clock_div|led_status~q\ : std_logic;
SIGNAL \PC_in|sinal_PC~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \PC_in|Add0~0_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC~5_combout\ : std_logic;
SIGNAL \MEM_ini|Mux2~0_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC[1]~3_combout\ : std_logic;
SIGNAL \MEM_ini|Mux0~0_combout\ : std_logic;
SIGNAL \sinal_ATT_final~0_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC~4_combout\ : std_logic;
SIGNAL \MEM_ini|Mux1~0_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC~2_combout\ : std_logic;
SIGNAL \MEM_ini|Mux9~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux8~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux7~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux6~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux5~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux5~1_combout\ : std_logic;
SIGNAL \MEM_ini|Mux4~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux7~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux7~1_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux6~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~2_combout\ : std_logic;
SIGNAL \Controle_ini|CARREGA_out~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux6~1_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~1\ : std_logic;
SIGNAL \ULA_ini|Add0~3_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~5_combout\ : std_logic;
SIGNAL \ULA_ini|Mux5~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~4\ : std_logic;
SIGNAL \ULA_ini|Add0~6_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~8_combout\ : std_logic;
SIGNAL \ULA_ini|Mux4~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~7\ : std_logic;
SIGNAL \ULA_ini|Add0~9_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~11_combout\ : std_logic;
SIGNAL \ULA_ini|Mux3~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~10\ : std_logic;
SIGNAL \ULA_ini|Add0~12_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~14_combout\ : std_logic;
SIGNAL \ULA_ini|Mux2~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux2~1_combout\ : std_logic;
SIGNAL \ULA_ini|Mux2~2_combout\ : std_logic;
SIGNAL \ULA_ini|Mux2~3_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~13\ : std_logic;
SIGNAL \ULA_ini|Add0~15_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~17_combout\ : std_logic;
SIGNAL \ULA_ini|Mux1~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~16\ : std_logic;
SIGNAL \ULA_ini|Add0~18_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~20_combout\ : std_logic;
SIGNAL \ULA_ini|Mux0~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux0~1_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~19\ : std_logic;
SIGNAL \ULA_ini|Add0~21_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~23_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_ini|instrucao_atual\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_ini|REG_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_div|contador\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_CLK <= CLK;
controle_BCD <= ww_controle_BCD;
saida_BCD <= ww_saida_BCD;
valor_PC <= ww_valor_PC;
valor_Memoria <= ww_valor_Memoria;
valor_OPCODE <= ww_valor_OPCODE;
valor_Y <= ww_valor_Y;
valor_X <= ww_valor_X;
valor_ULA <= ww_valor_ULA;
valor_CLOCK <= ww_valor_CLOCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\controle_BCD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \controle_BCD~output_o\);

\saida_BCD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_BCD~output_o\);

\valor_PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_in|sinal_PC\(0),
	devoe => ww_devoe,
	o => \valor_PC[0]~output_o\);

\valor_PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_in|sinal_PC\(1),
	devoe => ww_devoe,
	o => \valor_PC[1]~output_o\);

\valor_PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_in|sinal_PC\(2),
	devoe => ww_devoe,
	o => \valor_PC[2]~output_o\);

\valor_PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_in|sinal_PC\(3),
	devoe => ww_devoe,
	o => \valor_PC[3]~output_o\);

\valor_Memoria[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(0),
	devoe => ww_devoe,
	o => \valor_Memoria[0]~output_o\);

\valor_Memoria[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(1),
	devoe => ww_devoe,
	o => \valor_Memoria[1]~output_o\);

\valor_Memoria[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(2),
	devoe => ww_devoe,
	o => \valor_Memoria[2]~output_o\);

\valor_Memoria[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(3),
	devoe => ww_devoe,
	o => \valor_Memoria[3]~output_o\);

\valor_Memoria[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(4),
	devoe => ww_devoe,
	o => \valor_Memoria[4]~output_o\);

\valor_Memoria[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(5),
	devoe => ww_devoe,
	o => \valor_Memoria[5]~output_o\);

\valor_Memoria[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(6),
	devoe => ww_devoe,
	o => \valor_Memoria[6]~output_o\);

\valor_Memoria[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(5),
	devoe => ww_devoe,
	o => \valor_Memoria[7]~output_o\);

\valor_Memoria[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(8),
	devoe => ww_devoe,
	o => \valor_Memoria[8]~output_o\);

\valor_Memoria[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(9),
	devoe => ww_devoe,
	o => \valor_Memoria[9]~output_o\);

\valor_Memoria[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(10),
	devoe => ww_devoe,
	o => \valor_Memoria[10]~output_o\);

\valor_Memoria[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_Memoria[11]~output_o\);

\valor_Memoria[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_Memoria[12]~output_o\);

\valor_Memoria[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_Memoria[13]~output_o\);

\valor_Memoria[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_Memoria[14]~output_o\);

\valor_Memoria[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valor_Memoria[15]~output_o\);

\valor_OPCODE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(8),
	devoe => ww_devoe,
	o => \valor_OPCODE[0]~output_o\);

\valor_OPCODE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(9),
	devoe => ww_devoe,
	o => \valor_OPCODE[1]~output_o\);

\valor_OPCODE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(10),
	devoe => ww_devoe,
	o => \valor_OPCODE[2]~output_o\);

\valor_Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(0),
	devoe => ww_devoe,
	o => \valor_Y[0]~output_o\);

\valor_Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(1),
	devoe => ww_devoe,
	o => \valor_Y[1]~output_o\);

\valor_Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(2),
	devoe => ww_devoe,
	o => \valor_Y[2]~output_o\);

\valor_Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(3),
	devoe => ww_devoe,
	o => \valor_Y[3]~output_o\);

\valor_Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(4),
	devoe => ww_devoe,
	o => \valor_Y[4]~output_o\);

\valor_Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(5),
	devoe => ww_devoe,
	o => \valor_Y[5]~output_o\);

\valor_Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(6),
	devoe => ww_devoe,
	o => \valor_Y[6]~output_o\);

\valor_Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ini|instrucao_atual\(5),
	devoe => ww_devoe,
	o => \valor_Y[7]~output_o\);

\valor_X[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ini|REG_out\(0),
	devoe => ww_devoe,
	o => \valor_X[0]~output_o\);

\valor_X[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ini|REG_out\(1),
	devoe => ww_devoe,
	o => \valor_X[1]~output_o\);

\valor_X[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ini|REG_out\(2),
	devoe => ww_devoe,
	o => \valor_X[2]~output_o\);

\valor_X[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ini|REG_out\(3),
	devoe => ww_devoe,
	o => \valor_X[3]~output_o\);

\valor_X[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ini|REG_out\(4),
	devoe => ww_devoe,
	o => \valor_X[4]~output_o\);

\valor_X[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ini|REG_out\(5),
	devoe => ww_devoe,
	o => \valor_X[5]~output_o\);

\valor_X[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ini|REG_out\(6),
	devoe => ww_devoe,
	o => \valor_X[6]~output_o\);

\valor_X[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_ini|REG_out\(7),
	devoe => ww_devoe,
	o => \valor_X[7]~output_o\);

\valor_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_ini|Add0~2_combout\,
	devoe => ww_devoe,
	o => \valor_ULA[0]~output_o\);

\valor_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_ini|Add0~5_combout\,
	devoe => ww_devoe,
	o => \valor_ULA[1]~output_o\);

\valor_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_ini|Add0~8_combout\,
	devoe => ww_devoe,
	o => \valor_ULA[2]~output_o\);

\valor_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_ini|Add0~11_combout\,
	devoe => ww_devoe,
	o => \valor_ULA[3]~output_o\);

\valor_ULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_ini|Add0~14_combout\,
	devoe => ww_devoe,
	o => \valor_ULA[4]~output_o\);

\valor_ULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_ini|Add0~17_combout\,
	devoe => ww_devoe,
	o => \valor_ULA[5]~output_o\);

\valor_ULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_ini|Add0~20_combout\,
	devoe => ww_devoe,
	o => \valor_ULA[6]~output_o\);

\valor_ULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_ini|Add0~23_combout\,
	devoe => ww_devoe,
	o => \valor_ULA[7]~output_o\);

\valor_CLOCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_div|led_status~q\,
	devoe => ww_devoe,
	o => \valor_CLOCK~output_o\);

\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\clock_div|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~0_combout\ = \clock_div|contador\(0) $ (VCC)
-- \clock_div|Add0~1\ = CARRY(\clock_div|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(0),
	datad => VCC,
	combout => \clock_div|Add0~0_combout\,
	cout => \clock_div|Add0~1\);

\clock_div|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~2_combout\ = (\clock_div|contador\(1) & (!\clock_div|Add0~1\)) # (!\clock_div|contador\(1) & ((\clock_div|Add0~1\) # (GND)))
-- \clock_div|Add0~3\ = CARRY((!\clock_div|Add0~1\) # (!\clock_div|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(1),
	datad => VCC,
	cin => \clock_div|Add0~1\,
	combout => \clock_div|Add0~2_combout\,
	cout => \clock_div|Add0~3\);

\clock_div|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(1));

\clock_div|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~4_combout\ = (\clock_div|contador\(2) & (\clock_div|Add0~3\ $ (GND))) # (!\clock_div|contador\(2) & (!\clock_div|Add0~3\ & VCC))
-- \clock_div|Add0~5\ = CARRY((\clock_div|contador\(2) & !\clock_div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(2),
	datad => VCC,
	cin => \clock_div|Add0~3\,
	combout => \clock_div|Add0~4_combout\,
	cout => \clock_div|Add0~5\);

\clock_div|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(2));

\clock_div|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~6_combout\ = (\clock_div|contador\(3) & (!\clock_div|Add0~5\)) # (!\clock_div|contador\(3) & ((\clock_div|Add0~5\) # (GND)))
-- \clock_div|Add0~7\ = CARRY((!\clock_div|Add0~5\) # (!\clock_div|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(3),
	datad => VCC,
	cin => \clock_div|Add0~5\,
	combout => \clock_div|Add0~6_combout\,
	cout => \clock_div|Add0~7\);

\clock_div|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(3));

\clock_div|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~8_combout\ = (\clock_div|contador\(4) & (\clock_div|Add0~7\ $ (GND))) # (!\clock_div|contador\(4) & (!\clock_div|Add0~7\ & VCC))
-- \clock_div|Add0~9\ = CARRY((\clock_div|contador\(4) & !\clock_div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(4),
	datad => VCC,
	cin => \clock_div|Add0~7\,
	combout => \clock_div|Add0~8_combout\,
	cout => \clock_div|Add0~9\);

\clock_div|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(4));

\clock_div|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~10_combout\ = (\clock_div|contador\(5) & (!\clock_div|Add0~9\)) # (!\clock_div|contador\(5) & ((\clock_div|Add0~9\) # (GND)))
-- \clock_div|Add0~11\ = CARRY((!\clock_div|Add0~9\) # (!\clock_div|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(5),
	datad => VCC,
	cin => \clock_div|Add0~9\,
	combout => \clock_div|Add0~10_combout\,
	cout => \clock_div|Add0~11\);

\clock_div|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(5));

\clock_div|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~12_combout\ = (\clock_div|contador\(6) & (\clock_div|Add0~11\ $ (GND))) # (!\clock_div|contador\(6) & (!\clock_div|Add0~11\ & VCC))
-- \clock_div|Add0~13\ = CARRY((\clock_div|contador\(6) & !\clock_div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(6),
	datad => VCC,
	cin => \clock_div|Add0~11\,
	combout => \clock_div|Add0~12_combout\,
	cout => \clock_div|Add0~13\);

\clock_div|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(6));

\clock_div|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~14_combout\ = (\clock_div|contador\(7) & (!\clock_div|Add0~13\)) # (!\clock_div|contador\(7) & ((\clock_div|Add0~13\) # (GND)))
-- \clock_div|Add0~15\ = CARRY((!\clock_div|Add0~13\) # (!\clock_div|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(7),
	datad => VCC,
	cin => \clock_div|Add0~13\,
	combout => \clock_div|Add0~14_combout\,
	cout => \clock_div|Add0~15\);

\clock_div|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(7));

\clock_div|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~16_combout\ = (\clock_div|contador\(8) & (\clock_div|Add0~15\ $ (GND))) # (!\clock_div|contador\(8) & (!\clock_div|Add0~15\ & VCC))
-- \clock_div|Add0~17\ = CARRY((\clock_div|contador\(8) & !\clock_div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(8),
	datad => VCC,
	cin => \clock_div|Add0~15\,
	combout => \clock_div|Add0~16_combout\,
	cout => \clock_div|Add0~17\);

\clock_div|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(8));

\clock_div|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~18_combout\ = (\clock_div|contador\(9) & (!\clock_div|Add0~17\)) # (!\clock_div|contador\(9) & ((\clock_div|Add0~17\) # (GND)))
-- \clock_div|Add0~19\ = CARRY((!\clock_div|Add0~17\) # (!\clock_div|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(9),
	datad => VCC,
	cin => \clock_div|Add0~17\,
	combout => \clock_div|Add0~18_combout\,
	cout => \clock_div|Add0~19\);

\clock_div|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(9));

\clock_div|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~20_combout\ = (\clock_div|contador\(10) & (\clock_div|Add0~19\ $ (GND))) # (!\clock_div|contador\(10) & (!\clock_div|Add0~19\ & VCC))
-- \clock_div|Add0~21\ = CARRY((\clock_div|contador\(10) & !\clock_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(10),
	datad => VCC,
	cin => \clock_div|Add0~19\,
	combout => \clock_div|Add0~20_combout\,
	cout => \clock_div|Add0~21\);

\clock_div|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(10));

\clock_div|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~22_combout\ = (\clock_div|contador\(11) & (!\clock_div|Add0~21\)) # (!\clock_div|contador\(11) & ((\clock_div|Add0~21\) # (GND)))
-- \clock_div|Add0~23\ = CARRY((!\clock_div|Add0~21\) # (!\clock_div|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(11),
	datad => VCC,
	cin => \clock_div|Add0~21\,
	combout => \clock_div|Add0~22_combout\,
	cout => \clock_div|Add0~23\);

\clock_div|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(11));

\clock_div|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~24_combout\ = (\clock_div|contador\(12) & (\clock_div|Add0~23\ $ (GND))) # (!\clock_div|contador\(12) & (!\clock_div|Add0~23\ & VCC))
-- \clock_div|Add0~25\ = CARRY((\clock_div|contador\(12) & !\clock_div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(12),
	datad => VCC,
	cin => \clock_div|Add0~23\,
	combout => \clock_div|Add0~24_combout\,
	cout => \clock_div|Add0~25\);

\clock_div|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(12));

\clock_div|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~26_combout\ = (\clock_div|contador\(13) & (!\clock_div|Add0~25\)) # (!\clock_div|contador\(13) & ((\clock_div|Add0~25\) # (GND)))
-- \clock_div|Add0~27\ = CARRY((!\clock_div|Add0~25\) # (!\clock_div|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(13),
	datad => VCC,
	cin => \clock_div|Add0~25\,
	combout => \clock_div|Add0~26_combout\,
	cout => \clock_div|Add0~27\);

\clock_div|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(13));

\clock_div|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~28_combout\ = (\clock_div|contador\(14) & (\clock_div|Add0~27\ $ (GND))) # (!\clock_div|contador\(14) & (!\clock_div|Add0~27\ & VCC))
-- \clock_div|Add0~29\ = CARRY((\clock_div|contador\(14) & !\clock_div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(14),
	datad => VCC,
	cin => \clock_div|Add0~27\,
	combout => \clock_div|Add0~28_combout\,
	cout => \clock_div|Add0~29\);

\clock_div|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(14));

\clock_div|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~30_combout\ = (\clock_div|contador\(15) & (!\clock_div|Add0~29\)) # (!\clock_div|contador\(15) & ((\clock_div|Add0~29\) # (GND)))
-- \clock_div|Add0~31\ = CARRY((!\clock_div|Add0~29\) # (!\clock_div|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(15),
	datad => VCC,
	cin => \clock_div|Add0~29\,
	combout => \clock_div|Add0~30_combout\,
	cout => \clock_div|Add0~31\);

\clock_div|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(15));

\clock_div|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~32_combout\ = (\clock_div|contador\(16) & (\clock_div|Add0~31\ $ (GND))) # (!\clock_div|contador\(16) & (!\clock_div|Add0~31\ & VCC))
-- \clock_div|Add0~33\ = CARRY((\clock_div|contador\(16) & !\clock_div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(16),
	datad => VCC,
	cin => \clock_div|Add0~31\,
	combout => \clock_div|Add0~32_combout\,
	cout => \clock_div|Add0~33\);

\clock_div|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(16));

\clock_div|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~34_combout\ = (\clock_div|contador\(17) & (!\clock_div|Add0~33\)) # (!\clock_div|contador\(17) & ((\clock_div|Add0~33\) # (GND)))
-- \clock_div|Add0~35\ = CARRY((!\clock_div|Add0~33\) # (!\clock_div|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(17),
	datad => VCC,
	cin => \clock_div|Add0~33\,
	combout => \clock_div|Add0~34_combout\,
	cout => \clock_div|Add0~35\);

\clock_div|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(17));

\clock_div|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~36_combout\ = (\clock_div|contador\(18) & (\clock_div|Add0~35\ $ (GND))) # (!\clock_div|contador\(18) & (!\clock_div|Add0~35\ & VCC))
-- \clock_div|Add0~37\ = CARRY((\clock_div|contador\(18) & !\clock_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(18),
	datad => VCC,
	cin => \clock_div|Add0~35\,
	combout => \clock_div|Add0~36_combout\,
	cout => \clock_div|Add0~37\);

\clock_div|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(18));

\clock_div|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~38_combout\ = (\clock_div|contador\(19) & (!\clock_div|Add0~37\)) # (!\clock_div|contador\(19) & ((\clock_div|Add0~37\) # (GND)))
-- \clock_div|Add0~39\ = CARRY((!\clock_div|Add0~37\) # (!\clock_div|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(19),
	datad => VCC,
	cin => \clock_div|Add0~37\,
	combout => \clock_div|Add0~38_combout\,
	cout => \clock_div|Add0~39\);

\clock_div|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(19));

\clock_div|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~5_combout\ = (!\clock_div|contador\(16) & (!\clock_div|contador\(17) & (!\clock_div|contador\(18) & !\clock_div|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(16),
	datab => \clock_div|contador\(17),
	datac => \clock_div|contador\(18),
	datad => \clock_div|contador\(19),
	combout => \clock_div|Equal0~5_combout\);

\clock_div|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~40_combout\ = (\clock_div|contador\(20) & (\clock_div|Add0~39\ $ (GND))) # (!\clock_div|contador\(20) & (!\clock_div|Add0~39\ & VCC))
-- \clock_div|Add0~41\ = CARRY((\clock_div|contador\(20) & !\clock_div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(20),
	datad => VCC,
	cin => \clock_div|Add0~39\,
	combout => \clock_div|Add0~40_combout\,
	cout => \clock_div|Add0~41\);

\clock_div|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(20));

\clock_div|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~42_combout\ = (\clock_div|contador\(21) & (!\clock_div|Add0~41\)) # (!\clock_div|contador\(21) & ((\clock_div|Add0~41\) # (GND)))
-- \clock_div|Add0~43\ = CARRY((!\clock_div|Add0~41\) # (!\clock_div|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(21),
	datad => VCC,
	cin => \clock_div|Add0~41\,
	combout => \clock_div|Add0~42_combout\,
	cout => \clock_div|Add0~43\);

\clock_div|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(21));

\clock_div|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~44_combout\ = (\clock_div|contador\(22) & (\clock_div|Add0~43\ $ (GND))) # (!\clock_div|contador\(22) & (!\clock_div|Add0~43\ & VCC))
-- \clock_div|Add0~45\ = CARRY((\clock_div|contador\(22) & !\clock_div|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(22),
	datad => VCC,
	cin => \clock_div|Add0~43\,
	combout => \clock_div|Add0~44_combout\,
	cout => \clock_div|Add0~45\);

\clock_div|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(22));

\clock_div|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~46_combout\ = (\clock_div|contador\(23) & (!\clock_div|Add0~45\)) # (!\clock_div|contador\(23) & ((\clock_div|Add0~45\) # (GND)))
-- \clock_div|Add0~47\ = CARRY((!\clock_div|Add0~45\) # (!\clock_div|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(23),
	datad => VCC,
	cin => \clock_div|Add0~45\,
	combout => \clock_div|Add0~46_combout\,
	cout => \clock_div|Add0~47\);

\clock_div|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(23));

\clock_div|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~6_combout\ = (!\clock_div|contador\(20) & (!\clock_div|contador\(21) & (!\clock_div|contador\(22) & !\clock_div|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(20),
	datab => \clock_div|contador\(21),
	datac => \clock_div|contador\(22),
	datad => \clock_div|contador\(23),
	combout => \clock_div|Equal0~6_combout\);

\clock_div|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~48_combout\ = (\clock_div|contador\(24) & (\clock_div|Add0~47\ $ (GND))) # (!\clock_div|contador\(24) & (!\clock_div|Add0~47\ & VCC))
-- \clock_div|Add0~49\ = CARRY((\clock_div|contador\(24) & !\clock_div|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(24),
	datad => VCC,
	cin => \clock_div|Add0~47\,
	combout => \clock_div|Add0~48_combout\,
	cout => \clock_div|Add0~49\);

\clock_div|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(24));

\clock_div|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~50_combout\ = (\clock_div|contador\(25) & (!\clock_div|Add0~49\)) # (!\clock_div|contador\(25) & ((\clock_div|Add0~49\) # (GND)))
-- \clock_div|Add0~51\ = CARRY((!\clock_div|Add0~49\) # (!\clock_div|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(25),
	datad => VCC,
	cin => \clock_div|Add0~49\,
	combout => \clock_div|Add0~50_combout\,
	cout => \clock_div|Add0~51\);

\clock_div|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(25));

\clock_div|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~52_combout\ = (\clock_div|contador\(26) & (\clock_div|Add0~51\ $ (GND))) # (!\clock_div|contador\(26) & (!\clock_div|Add0~51\ & VCC))
-- \clock_div|Add0~53\ = CARRY((\clock_div|contador\(26) & !\clock_div|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(26),
	datad => VCC,
	cin => \clock_div|Add0~51\,
	combout => \clock_div|Add0~52_combout\,
	cout => \clock_div|Add0~53\);

\clock_div|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(26));

\clock_div|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~54_combout\ = (\clock_div|contador\(27) & (!\clock_div|Add0~53\)) # (!\clock_div|contador\(27) & ((\clock_div|Add0~53\) # (GND)))
-- \clock_div|Add0~55\ = CARRY((!\clock_div|Add0~53\) # (!\clock_div|contador\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(27),
	datad => VCC,
	cin => \clock_div|Add0~53\,
	combout => \clock_div|Add0~54_combout\,
	cout => \clock_div|Add0~55\);

\clock_div|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(27));

\clock_div|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~7_combout\ = (!\clock_div|contador\(24) & (!\clock_div|contador\(25) & (!\clock_div|contador\(26) & !\clock_div|contador\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(24),
	datab => \clock_div|contador\(25),
	datac => \clock_div|contador\(26),
	datad => \clock_div|contador\(27),
	combout => \clock_div|Equal0~7_combout\);

\clock_div|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~56_combout\ = (\clock_div|contador\(28) & (\clock_div|Add0~55\ $ (GND))) # (!\clock_div|contador\(28) & (!\clock_div|Add0~55\ & VCC))
-- \clock_div|Add0~57\ = CARRY((\clock_div|contador\(28) & !\clock_div|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(28),
	datad => VCC,
	cin => \clock_div|Add0~55\,
	combout => \clock_div|Add0~56_combout\,
	cout => \clock_div|Add0~57\);

\clock_div|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(28));

\clock_div|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~58_combout\ = (\clock_div|contador\(29) & (!\clock_div|Add0~57\)) # (!\clock_div|contador\(29) & ((\clock_div|Add0~57\) # (GND)))
-- \clock_div|Add0~59\ = CARRY((!\clock_div|Add0~57\) # (!\clock_div|contador\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(29),
	datad => VCC,
	cin => \clock_div|Add0~57\,
	combout => \clock_div|Add0~58_combout\,
	cout => \clock_div|Add0~59\);

\clock_div|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(29));

\clock_div|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~60_combout\ = (\clock_div|contador\(30) & (\clock_div|Add0~59\ $ (GND))) # (!\clock_div|contador\(30) & (!\clock_div|Add0~59\ & VCC))
-- \clock_div|Add0~61\ = CARRY((\clock_div|contador\(30) & !\clock_div|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(30),
	datad => VCC,
	cin => \clock_div|Add0~59\,
	combout => \clock_div|Add0~60_combout\,
	cout => \clock_div|Add0~61\);

\clock_div|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(30));

\clock_div|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~62_combout\ = \clock_div|contador\(31) $ (\clock_div|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(31),
	cin => \clock_div|Add0~61\,
	combout => \clock_div|Add0~62_combout\);

\clock_div|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(31));

\clock_div|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~8_combout\ = (!\clock_div|contador\(28) & (!\clock_div|contador\(29) & (!\clock_div|contador\(30) & !\clock_div|contador\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(28),
	datab => \clock_div|contador\(29),
	datac => \clock_div|contador\(30),
	datad => \clock_div|contador\(31),
	combout => \clock_div|Equal0~8_combout\);

\clock_div|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~9_combout\ = (\clock_div|Equal0~5_combout\ & (\clock_div|Equal0~6_combout\ & (\clock_div|Equal0~7_combout\ & \clock_div|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|Equal0~5_combout\,
	datab => \clock_div|Equal0~6_combout\,
	datac => \clock_div|Equal0~7_combout\,
	datad => \clock_div|Equal0~8_combout\,
	combout => \clock_div|Equal0~9_combout\);

\clock_div|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|contador~0_combout\ = (\clock_div|Add0~0_combout\ & ((!\clock_div|Equal0~9_combout\) # (!\clock_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|Add0~0_combout\,
	datac => \clock_div|Equal0~4_combout\,
	datad => \clock_div|Equal0~9_combout\,
	combout => \clock_div|contador~0_combout\);

\clock_div|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(0));

\clock_div|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~0_combout\ = (!\clock_div|contador\(0) & (!\clock_div|contador\(1) & (!\clock_div|contador\(2) & !\clock_div|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(0),
	datab => \clock_div|contador\(1),
	datac => \clock_div|contador\(2),
	datad => \clock_div|contador\(3),
	combout => \clock_div|Equal0~0_combout\);

\clock_div|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~1_combout\ = (!\clock_div|contador\(4) & (!\clock_div|contador\(5) & (!\clock_div|contador\(6) & !\clock_div|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(4),
	datab => \clock_div|contador\(5),
	datac => \clock_div|contador\(6),
	datad => \clock_div|contador\(7),
	combout => \clock_div|Equal0~1_combout\);

\clock_div|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~2_combout\ = (!\clock_div|contador\(8) & (!\clock_div|contador\(9) & (!\clock_div|contador\(10) & !\clock_div|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(8),
	datab => \clock_div|contador\(9),
	datac => \clock_div|contador\(10),
	datad => \clock_div|contador\(11),
	combout => \clock_div|Equal0~2_combout\);

\clock_div|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~3_combout\ = (!\clock_div|contador\(12) & (!\clock_div|contador\(13) & (!\clock_div|contador\(14) & !\clock_div|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(12),
	datab => \clock_div|contador\(13),
	datac => \clock_div|contador\(14),
	datad => \clock_div|contador\(15),
	combout => \clock_div|Equal0~3_combout\);

\clock_div|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~4_combout\ = (\clock_div|Equal0~0_combout\ & (\clock_div|Equal0~1_combout\ & (\clock_div|Equal0~2_combout\ & \clock_div|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|Equal0~0_combout\,
	datab => \clock_div|Equal0~1_combout\,
	datac => \clock_div|Equal0~2_combout\,
	datad => \clock_div|Equal0~3_combout\,
	combout => \clock_div|Equal0~4_combout\);

\clock_div|led_status~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|led_status~0_combout\ = \clock_div|led_status~q\ $ (((\clock_div|Equal0~4_combout\ & \clock_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|led_status~q\,
	datac => \clock_div|Equal0~4_combout\,
	datad => \clock_div|Equal0~9_combout\,
	combout => \clock_div|led_status~0_combout\);

\clock_div|led_status\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \clock_div|led_status~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|led_status~q\);

\PC_in|sinal_PC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC~6_combout\ = (\sinal_ATT_final~0_combout\ & (\PC_in|sinal_PC\(2) $ (((\PC_in|sinal_PC\(0) & \PC_in|sinal_PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \sinal_ATT_final~0_combout\,
	combout => \PC_in|sinal_PC~6_combout\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\PC_in|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|Add0~0_combout\ = (\PC_in|sinal_PC\(0) & \PC_in|sinal_PC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	combout => \PC_in|Add0~0_combout\);

\PC_in|sinal_PC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC~5_combout\ = (\sinal_ATT_final~0_combout\ & (\PC_in|sinal_PC\(3) $ (((\PC_in|sinal_PC\(2) & \PC_in|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(3),
	datab => \PC_in|sinal_PC\(2),
	datac => \PC_in|Add0~0_combout\,
	datad => \sinal_ATT_final~0_combout\,
	combout => \PC_in|sinal_PC~5_combout\);

\PC_in|sinal_PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \PC_in|sinal_PC~5_combout\,
	ena => \PC_in|sinal_PC[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_in|sinal_PC\(3));

\MEM_ini|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux2~0_combout\ = (\PC_in|sinal_PC\(3) $ (((\PC_in|sinal_PC\(0) & \PC_in|sinal_PC\(1))))) # (!\PC_in|sinal_PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(3),
	combout => \MEM_ini|Mux2~0_combout\);

\MEM_ini|instrucao_atual[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux2~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(8));

\PC_in|sinal_PC[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC[1]~3_combout\ = (\reset~input_o\) # (((!\MEM_ini|instrucao_atual\(10)) # (!\MEM_ini|instrucao_atual\(9))) # (!\MEM_ini|instrucao_atual\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(10),
	combout => \PC_in|sinal_PC[1]~3_combout\);

\PC_in|sinal_PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \PC_in|sinal_PC~6_combout\,
	ena => \PC_in|sinal_PC[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_in|sinal_PC\(2));

\MEM_ini|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux0~0_combout\ = (\PC_in|sinal_PC\(1) & (((\PC_in|sinal_PC\(2) & \PC_in|sinal_PC\(3))))) # (!\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(0) $ (((\PC_in|sinal_PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(3),
	combout => \MEM_ini|Mux0~0_combout\);

\MEM_ini|instrucao_atual[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux0~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(10));

\sinal_ATT_final~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinal_ATT_final~0_combout\ = ((\reset~input_o\) # (!\MEM_ini|instrucao_atual\(10))) # (!\MEM_ini|instrucao_atual\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(9),
	datab => \MEM_ini|instrucao_atual\(10),
	datad => \reset~input_o\,
	combout => \sinal_ATT_final~0_combout\);

\PC_in|sinal_PC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC~4_combout\ = (\sinal_ATT_final~0_combout\ & (\PC_in|sinal_PC\(0) $ (\PC_in|sinal_PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_in|sinal_PC\(0),
	datac => \PC_in|sinal_PC\(1),
	datad => \sinal_ATT_final~0_combout\,
	combout => \PC_in|sinal_PC~4_combout\);

\PC_in|sinal_PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \PC_in|sinal_PC~4_combout\,
	ena => \PC_in|sinal_PC[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_in|sinal_PC\(1));

\MEM_ini|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux1~0_combout\ = (\PC_in|sinal_PC\(2) & ((\PC_in|sinal_PC\(0) & (\PC_in|sinal_PC\(1))) # (!\PC_in|sinal_PC\(0) & ((!\PC_in|sinal_PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(3),
	combout => \MEM_ini|Mux1~0_combout\);

\MEM_ini|instrucao_atual[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux1~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(9));

\PC_in|sinal_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC~2_combout\ = (!\PC_in|sinal_PC\(0) & (((\reset~input_o\) # (!\MEM_ini|instrucao_atual\(10))) # (!\MEM_ini|instrucao_atual\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \MEM_ini|instrucao_atual\(9),
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \reset~input_o\,
	combout => \PC_in|sinal_PC~2_combout\);

\PC_in|sinal_PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \PC_in|sinal_PC~2_combout\,
	ena => \PC_in|sinal_PC[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_in|sinal_PC\(0));

\MEM_ini|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux9~0_combout\ = (\PC_in|sinal_PC\(3) & ((\PC_in|sinal_PC\(1) $ (\PC_in|sinal_PC\(2))))) # (!\PC_in|sinal_PC\(3) & (!\PC_in|sinal_PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(3),
	combout => \MEM_ini|Mux9~0_combout\);

\MEM_ini|instrucao_atual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux9~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(0));

\MEM_ini|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux8~0_combout\ = (\PC_in|sinal_PC\(1) & (!\PC_in|sinal_PC\(0) & (\PC_in|sinal_PC\(2)))) # (!\PC_in|sinal_PC\(1) & ((\PC_in|sinal_PC\(3) & (!\PC_in|sinal_PC\(0))) # (!\PC_in|sinal_PC\(3) & ((!\PC_in|sinal_PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(3),
	combout => \MEM_ini|Mux8~0_combout\);

\MEM_ini|instrucao_atual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux8~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(1));

\MEM_ini|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux7~0_combout\ = (\PC_in|sinal_PC\(1) & (!\PC_in|sinal_PC\(3) & ((\PC_in|sinal_PC\(2)) # (!\PC_in|sinal_PC\(0))))) # (!\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(0) $ (((\PC_in|sinal_PC\(2)) # (!\PC_in|sinal_PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(3),
	combout => \MEM_ini|Mux7~0_combout\);

\MEM_ini|instrucao_atual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux7~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(2));

\MEM_ini|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux6~0_combout\ = (\PC_in|sinal_PC\(0) & (\PC_in|sinal_PC\(1) & (!\PC_in|sinal_PC\(2) & !\PC_in|sinal_PC\(3)))) # (!\PC_in|sinal_PC\(0) & ((\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(2))) # (!\PC_in|sinal_PC\(1) & ((\PC_in|sinal_PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(3),
	combout => \MEM_ini|Mux6~0_combout\);

\MEM_ini|instrucao_atual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux6~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(3));

\MEM_ini|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux5~0_combout\ = (\PC_in|sinal_PC\(2) & (\PC_in|sinal_PC\(3) & (!\PC_in|sinal_PC\(0) & !\PC_in|sinal_PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(2),
	datab => \PC_in|sinal_PC\(3),
	datac => \PC_in|sinal_PC\(0),
	datad => \PC_in|sinal_PC\(1),
	combout => \MEM_ini|Mux5~0_combout\);

\MEM_ini|instrucao_atual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux5~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(4));

\MEM_ini|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux5~1_combout\ = (\PC_in|sinal_PC\(3) & (!\PC_in|sinal_PC\(0) & !\PC_in|sinal_PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(3),
	datac => \PC_in|sinal_PC\(0),
	datad => \PC_in|sinal_PC\(1),
	combout => \MEM_ini|Mux5~1_combout\);

\MEM_ini|instrucao_atual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux5~1_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(5));

\MEM_ini|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux4~0_combout\ = (!\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(3) & (\PC_in|sinal_PC\(0) $ (\PC_in|sinal_PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(0),
	datab => \PC_in|sinal_PC\(1),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(3),
	combout => \MEM_ini|Mux4~0_combout\);

\MEM_ini|instrucao_atual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \MEM_ini|Mux4~0_combout\,
	ena => \sinal_ATT_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(6));

\ULA_ini|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux7~0_combout\ = \MEM_ini|instrucao_atual\(9) $ (\MEM_ini|instrucao_atual\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(10),
	combout => \ULA_ini|Mux7~0_combout\);

\ULA_ini|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux7~1_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(0)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(0))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & (!\REG_ini|REG_out\(0))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\REG_ini|REG_out\(0) & \MEM_ini|instrucao_atual\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \REG_ini|REG_out\(0),
	datac => \MEM_ini|instrucao_atual\(0),
	datad => \MEM_ini|instrucao_atual\(8),
	combout => \ULA_ini|Mux7~1_combout\);

\ULA_ini|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~0_combout\ = (\REG_ini|REG_out\(0) & (\MEM_ini|instrucao_atual\(0) $ (VCC))) # (!\REG_ini|REG_out\(0) & (\MEM_ini|instrucao_atual\(0) & VCC))
-- \ULA_ini|Add0~1\ = CARRY((\REG_ini|REG_out\(0) & \MEM_ini|instrucao_atual\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(0),
	datab => \MEM_ini|instrucao_atual\(0),
	datad => VCC,
	combout => \ULA_ini|Add0~0_combout\,
	cout => \ULA_ini|Add0~1\);

\ULA_ini|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux6~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(9)) # (\MEM_ini|instrucao_atual\(10)))) # (!\MEM_ini|instrucao_atual\(8) & ((!\MEM_ini|instrucao_atual\(10)) # (!\MEM_ini|instrucao_atual\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(10),
	combout => \ULA_ini|Mux6~0_combout\);

\ULA_ini|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~2_combout\ = (\ULA_ini|Mux7~0_combout\ & ((\ULA_ini|Mux7~1_combout\) # ((\ULA_ini|Add0~0_combout\ & !\ULA_ini|Mux6~0_combout\)))) # (!\ULA_ini|Mux7~0_combout\ & (((\ULA_ini|Add0~0_combout\ & !\ULA_ini|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux7~0_combout\,
	datab => \ULA_ini|Mux7~1_combout\,
	datac => \ULA_ini|Add0~0_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Add0~2_combout\);

\Controle_ini|CARREGA_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controle_ini|CARREGA_out~0_combout\ = (\MEM_ini|instrucao_atual\(9) & ((!\MEM_ini|instrucao_atual\(10)))) # (!\MEM_ini|instrucao_atual\(9) & ((\MEM_ini|instrucao_atual\(8)) # (\MEM_ini|instrucao_atual\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(10),
	combout => \Controle_ini|CARREGA_out~0_combout\);

\REG_ini|REG_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \ULA_ini|Add0~2_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(0));

\ULA_ini|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux6~1_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(1)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(1))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & (!\REG_ini|REG_out\(1))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\REG_ini|REG_out\(1) & \MEM_ini|instrucao_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \REG_ini|REG_out\(1),
	datac => \MEM_ini|instrucao_atual\(1),
	datad => \MEM_ini|instrucao_atual\(8),
	combout => \ULA_ini|Mux6~1_combout\);

\ULA_ini|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~3_combout\ = (\REG_ini|REG_out\(1) & ((\MEM_ini|instrucao_atual\(1) & (\ULA_ini|Add0~1\ & VCC)) # (!\MEM_ini|instrucao_atual\(1) & (!\ULA_ini|Add0~1\)))) # (!\REG_ini|REG_out\(1) & ((\MEM_ini|instrucao_atual\(1) & (!\ULA_ini|Add0~1\)) # 
-- (!\MEM_ini|instrucao_atual\(1) & ((\ULA_ini|Add0~1\) # (GND)))))
-- \ULA_ini|Add0~4\ = CARRY((\REG_ini|REG_out\(1) & (!\MEM_ini|instrucao_atual\(1) & !\ULA_ini|Add0~1\)) # (!\REG_ini|REG_out\(1) & ((!\ULA_ini|Add0~1\) # (!\MEM_ini|instrucao_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(1),
	datab => \MEM_ini|instrucao_atual\(1),
	datad => VCC,
	cin => \ULA_ini|Add0~1\,
	combout => \ULA_ini|Add0~3_combout\,
	cout => \ULA_ini|Add0~4\);

\ULA_ini|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~5_combout\ = (\ULA_ini|Mux7~0_combout\ & ((\ULA_ini|Mux6~1_combout\) # ((\ULA_ini|Add0~3_combout\ & !\ULA_ini|Mux6~0_combout\)))) # (!\ULA_ini|Mux7~0_combout\ & (((\ULA_ini|Add0~3_combout\ & !\ULA_ini|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux7~0_combout\,
	datab => \ULA_ini|Mux6~1_combout\,
	datac => \ULA_ini|Add0~3_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Add0~5_combout\);

\REG_ini|REG_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \ULA_ini|Add0~5_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(1));

\ULA_ini|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux5~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(2)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(2))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & (!\REG_ini|REG_out\(2))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\REG_ini|REG_out\(2) & \MEM_ini|instrucao_atual\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \REG_ini|REG_out\(2),
	datac => \MEM_ini|instrucao_atual\(2),
	datad => \MEM_ini|instrucao_atual\(8),
	combout => \ULA_ini|Mux5~0_combout\);

\ULA_ini|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~6_combout\ = ((\REG_ini|REG_out\(2) $ (\MEM_ini|instrucao_atual\(2) $ (!\ULA_ini|Add0~4\)))) # (GND)
-- \ULA_ini|Add0~7\ = CARRY((\REG_ini|REG_out\(2) & ((\MEM_ini|instrucao_atual\(2)) # (!\ULA_ini|Add0~4\))) # (!\REG_ini|REG_out\(2) & (\MEM_ini|instrucao_atual\(2) & !\ULA_ini|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(2),
	datab => \MEM_ini|instrucao_atual\(2),
	datad => VCC,
	cin => \ULA_ini|Add0~4\,
	combout => \ULA_ini|Add0~6_combout\,
	cout => \ULA_ini|Add0~7\);

\ULA_ini|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~8_combout\ = (\ULA_ini|Mux7~0_combout\ & ((\ULA_ini|Mux5~0_combout\) # ((\ULA_ini|Add0~6_combout\ & !\ULA_ini|Mux6~0_combout\)))) # (!\ULA_ini|Mux7~0_combout\ & (((\ULA_ini|Add0~6_combout\ & !\ULA_ini|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux7~0_combout\,
	datab => \ULA_ini|Mux5~0_combout\,
	datac => \ULA_ini|Add0~6_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Add0~8_combout\);

\REG_ini|REG_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \ULA_ini|Add0~8_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(2));

\ULA_ini|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux4~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(3)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(3))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & ((!\REG_ini|REG_out\(3)))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\MEM_ini|instrucao_atual\(3) & \REG_ini|REG_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(8),
	datab => \MEM_ini|instrucao_atual\(3),
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \REG_ini|REG_out\(3),
	combout => \ULA_ini|Mux4~0_combout\);

\ULA_ini|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~9_combout\ = (\REG_ini|REG_out\(3) & ((\MEM_ini|instrucao_atual\(3) & (\ULA_ini|Add0~7\ & VCC)) # (!\MEM_ini|instrucao_atual\(3) & (!\ULA_ini|Add0~7\)))) # (!\REG_ini|REG_out\(3) & ((\MEM_ini|instrucao_atual\(3) & (!\ULA_ini|Add0~7\)) # 
-- (!\MEM_ini|instrucao_atual\(3) & ((\ULA_ini|Add0~7\) # (GND)))))
-- \ULA_ini|Add0~10\ = CARRY((\REG_ini|REG_out\(3) & (!\MEM_ini|instrucao_atual\(3) & !\ULA_ini|Add0~7\)) # (!\REG_ini|REG_out\(3) & ((!\ULA_ini|Add0~7\) # (!\MEM_ini|instrucao_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(3),
	datab => \MEM_ini|instrucao_atual\(3),
	datad => VCC,
	cin => \ULA_ini|Add0~7\,
	combout => \ULA_ini|Add0~9_combout\,
	cout => \ULA_ini|Add0~10\);

\ULA_ini|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~11_combout\ = (\ULA_ini|Mux7~0_combout\ & ((\ULA_ini|Mux4~0_combout\) # ((\ULA_ini|Add0~9_combout\ & !\ULA_ini|Mux6~0_combout\)))) # (!\ULA_ini|Mux7~0_combout\ & (((\ULA_ini|Add0~9_combout\ & !\ULA_ini|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux7~0_combout\,
	datab => \ULA_ini|Mux4~0_combout\,
	datac => \ULA_ini|Add0~9_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Add0~11_combout\);

\REG_ini|REG_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \ULA_ini|Add0~11_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(3));

\ULA_ini|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux3~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(4)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(4))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & (!\REG_ini|REG_out\(4))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\REG_ini|REG_out\(4) & \MEM_ini|instrucao_atual\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \REG_ini|REG_out\(4),
	datac => \MEM_ini|instrucao_atual\(4),
	datad => \MEM_ini|instrucao_atual\(8),
	combout => \ULA_ini|Mux3~0_combout\);

\ULA_ini|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~12_combout\ = ((\REG_ini|REG_out\(4) $ (\MEM_ini|instrucao_atual\(4) $ (!\ULA_ini|Add0~10\)))) # (GND)
-- \ULA_ini|Add0~13\ = CARRY((\REG_ini|REG_out\(4) & ((\MEM_ini|instrucao_atual\(4)) # (!\ULA_ini|Add0~10\))) # (!\REG_ini|REG_out\(4) & (\MEM_ini|instrucao_atual\(4) & !\ULA_ini|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(4),
	datab => \MEM_ini|instrucao_atual\(4),
	datad => VCC,
	cin => \ULA_ini|Add0~10\,
	combout => \ULA_ini|Add0~12_combout\,
	cout => \ULA_ini|Add0~13\);

\ULA_ini|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~14_combout\ = (\ULA_ini|Mux7~0_combout\ & ((\ULA_ini|Mux3~0_combout\) # ((\ULA_ini|Add0~12_combout\ & !\ULA_ini|Mux6~0_combout\)))) # (!\ULA_ini|Mux7~0_combout\ & (((\ULA_ini|Add0~12_combout\ & !\ULA_ini|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux7~0_combout\,
	datab => \ULA_ini|Mux3~0_combout\,
	datac => \ULA_ini|Add0~12_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Add0~14_combout\);

\REG_ini|REG_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \ULA_ini|Add0~14_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(4));

\ULA_ini|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux2~0_combout\ = (\MEM_ini|instrucao_atual\(5) & !\MEM_ini|instrucao_atual\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(5),
	datad => \MEM_ini|instrucao_atual\(9),
	combout => \ULA_ini|Mux2~0_combout\);

\ULA_ini|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux2~1_combout\ = (!\MEM_ini|instrucao_atual\(10) & ((\MEM_ini|instrucao_atual\(8)) # (\MEM_ini|instrucao_atual\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(8),
	datab => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(10),
	combout => \ULA_ini|Mux2~1_combout\);

\ULA_ini|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux2~2_combout\ = (\REG_ini|REG_out\(5) & ((\MEM_ini|instrucao_atual\(8)) # ((\MEM_ini|instrucao_atual\(5) & \ULA_ini|Mux2~1_combout\)))) # (!\REG_ini|REG_out\(5) & (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(5)) # 
-- (!\ULA_ini|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(5),
	datab => \MEM_ini|instrucao_atual\(5),
	datac => \MEM_ini|instrucao_atual\(8),
	datad => \ULA_ini|Mux2~1_combout\,
	combout => \ULA_ini|Mux2~2_combout\);

\ULA_ini|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux2~3_combout\ = (\MEM_ini|instrucao_atual\(10) & ((\ULA_ini|Mux2~2_combout\ & ((\ULA_ini|Mux2~0_combout\))) # (!\ULA_ini|Mux2~2_combout\ & (!\REG_ini|REG_out\(5))))) # (!\MEM_ini|instrucao_atual\(10) & (((\ULA_ini|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(5),
	datab => \ULA_ini|Mux2~0_combout\,
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \ULA_ini|Mux2~2_combout\,
	combout => \ULA_ini|Mux2~3_combout\);

\ULA_ini|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~15_combout\ = (\REG_ini|REG_out\(5) & ((\MEM_ini|instrucao_atual\(5) & (\ULA_ini|Add0~13\ & VCC)) # (!\MEM_ini|instrucao_atual\(5) & (!\ULA_ini|Add0~13\)))) # (!\REG_ini|REG_out\(5) & ((\MEM_ini|instrucao_atual\(5) & (!\ULA_ini|Add0~13\)) # 
-- (!\MEM_ini|instrucao_atual\(5) & ((\ULA_ini|Add0~13\) # (GND)))))
-- \ULA_ini|Add0~16\ = CARRY((\REG_ini|REG_out\(5) & (!\MEM_ini|instrucao_atual\(5) & !\ULA_ini|Add0~13\)) # (!\REG_ini|REG_out\(5) & ((!\ULA_ini|Add0~13\) # (!\MEM_ini|instrucao_atual\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(5),
	datab => \MEM_ini|instrucao_atual\(5),
	datad => VCC,
	cin => \ULA_ini|Add0~13\,
	combout => \ULA_ini|Add0~15_combout\,
	cout => \ULA_ini|Add0~16\);

\ULA_ini|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~17_combout\ = (\ULA_ini|Mux6~0_combout\ & (\ULA_ini|Mux2~3_combout\)) # (!\ULA_ini|Mux6~0_combout\ & ((\ULA_ini|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux2~3_combout\,
	datab => \ULA_ini|Add0~15_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Add0~17_combout\);

\REG_ini|REG_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \ULA_ini|Add0~17_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(5));

\ULA_ini|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux1~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(6)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(6))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & ((!\REG_ini|REG_out\(6)))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\MEM_ini|instrucao_atual\(6) & \REG_ini|REG_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(8),
	datab => \MEM_ini|instrucao_atual\(6),
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \REG_ini|REG_out\(6),
	combout => \ULA_ini|Mux1~0_combout\);

\ULA_ini|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~18_combout\ = ((\REG_ini|REG_out\(6) $ (\MEM_ini|instrucao_atual\(6) $ (!\ULA_ini|Add0~16\)))) # (GND)
-- \ULA_ini|Add0~19\ = CARRY((\REG_ini|REG_out\(6) & ((\MEM_ini|instrucao_atual\(6)) # (!\ULA_ini|Add0~16\))) # (!\REG_ini|REG_out\(6) & (\MEM_ini|instrucao_atual\(6) & !\ULA_ini|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(6),
	datab => \MEM_ini|instrucao_atual\(6),
	datad => VCC,
	cin => \ULA_ini|Add0~16\,
	combout => \ULA_ini|Add0~18_combout\,
	cout => \ULA_ini|Add0~19\);

\ULA_ini|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~20_combout\ = (\ULA_ini|Mux7~0_combout\ & ((\ULA_ini|Mux1~0_combout\) # ((\ULA_ini|Add0~18_combout\ & !\ULA_ini|Mux6~0_combout\)))) # (!\ULA_ini|Mux7~0_combout\ & (((\ULA_ini|Add0~18_combout\ & !\ULA_ini|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux7~0_combout\,
	datab => \ULA_ini|Mux1~0_combout\,
	datac => \ULA_ini|Add0~18_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Add0~20_combout\);

\REG_ini|REG_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \ULA_ini|Add0~20_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(6));

\ULA_ini|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux0~0_combout\ = (\REG_ini|REG_out\(7) & ((\MEM_ini|instrucao_atual\(8)) # ((\MEM_ini|instrucao_atual\(5) & \ULA_ini|Mux2~1_combout\)))) # (!\REG_ini|REG_out\(7) & (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(5)) # 
-- (!\ULA_ini|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(7),
	datab => \MEM_ini|instrucao_atual\(5),
	datac => \MEM_ini|instrucao_atual\(8),
	datad => \ULA_ini|Mux2~1_combout\,
	combout => \ULA_ini|Mux0~0_combout\);

\ULA_ini|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux0~1_combout\ = (\MEM_ini|instrucao_atual\(10) & ((\ULA_ini|Mux0~0_combout\ & ((\ULA_ini|Mux2~0_combout\))) # (!\ULA_ini|Mux0~0_combout\ & (!\REG_ini|REG_out\(7))))) # (!\MEM_ini|instrucao_atual\(10) & (((\ULA_ini|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(7),
	datab => \ULA_ini|Mux2~0_combout\,
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \ULA_ini|Mux0~0_combout\,
	combout => \ULA_ini|Mux0~1_combout\);

\ULA_ini|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~21_combout\ = \REG_ini|REG_out\(7) $ (\MEM_ini|instrucao_atual\(5) $ (\ULA_ini|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(7),
	datab => \MEM_ini|instrucao_atual\(5),
	cin => \ULA_ini|Add0~19\,
	combout => \ULA_ini|Add0~21_combout\);

\ULA_ini|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~23_combout\ = (\ULA_ini|Mux6~0_combout\ & (\ULA_ini|Mux0~1_combout\)) # (!\ULA_ini|Mux6~0_combout\ & ((\ULA_ini|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux0~1_combout\,
	datab => \ULA_ini|Add0~21_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Add0~23_combout\);

\REG_ini|REG_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~q\,
	d => \ULA_ini|Add0~23_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(7));

ww_controle_BCD <= \controle_BCD~output_o\;

ww_saida_BCD <= \saida_BCD~output_o\;

ww_valor_PC(0) <= \valor_PC[0]~output_o\;

ww_valor_PC(1) <= \valor_PC[1]~output_o\;

ww_valor_PC(2) <= \valor_PC[2]~output_o\;

ww_valor_PC(3) <= \valor_PC[3]~output_o\;

ww_valor_Memoria(0) <= \valor_Memoria[0]~output_o\;

ww_valor_Memoria(1) <= \valor_Memoria[1]~output_o\;

ww_valor_Memoria(2) <= \valor_Memoria[2]~output_o\;

ww_valor_Memoria(3) <= \valor_Memoria[3]~output_o\;

ww_valor_Memoria(4) <= \valor_Memoria[4]~output_o\;

ww_valor_Memoria(5) <= \valor_Memoria[5]~output_o\;

ww_valor_Memoria(6) <= \valor_Memoria[6]~output_o\;

ww_valor_Memoria(7) <= \valor_Memoria[7]~output_o\;

ww_valor_Memoria(8) <= \valor_Memoria[8]~output_o\;

ww_valor_Memoria(9) <= \valor_Memoria[9]~output_o\;

ww_valor_Memoria(10) <= \valor_Memoria[10]~output_o\;

ww_valor_Memoria(11) <= \valor_Memoria[11]~output_o\;

ww_valor_Memoria(12) <= \valor_Memoria[12]~output_o\;

ww_valor_Memoria(13) <= \valor_Memoria[13]~output_o\;

ww_valor_Memoria(14) <= \valor_Memoria[14]~output_o\;

ww_valor_Memoria(15) <= \valor_Memoria[15]~output_o\;

ww_valor_OPCODE(0) <= \valor_OPCODE[0]~output_o\;

ww_valor_OPCODE(1) <= \valor_OPCODE[1]~output_o\;

ww_valor_OPCODE(2) <= \valor_OPCODE[2]~output_o\;

ww_valor_Y(0) <= \valor_Y[0]~output_o\;

ww_valor_Y(1) <= \valor_Y[1]~output_o\;

ww_valor_Y(2) <= \valor_Y[2]~output_o\;

ww_valor_Y(3) <= \valor_Y[3]~output_o\;

ww_valor_Y(4) <= \valor_Y[4]~output_o\;

ww_valor_Y(5) <= \valor_Y[5]~output_o\;

ww_valor_Y(6) <= \valor_Y[6]~output_o\;

ww_valor_Y(7) <= \valor_Y[7]~output_o\;

ww_valor_X(0) <= \valor_X[0]~output_o\;

ww_valor_X(1) <= \valor_X[1]~output_o\;

ww_valor_X(2) <= \valor_X[2]~output_o\;

ww_valor_X(3) <= \valor_X[3]~output_o\;

ww_valor_X(4) <= \valor_X[4]~output_o\;

ww_valor_X(5) <= \valor_X[5]~output_o\;

ww_valor_X(6) <= \valor_X[6]~output_o\;

ww_valor_X(7) <= \valor_X[7]~output_o\;

ww_valor_ULA(0) <= \valor_ULA[0]~output_o\;

ww_valor_ULA(1) <= \valor_ULA[1]~output_o\;

ww_valor_ULA(2) <= \valor_ULA[2]~output_o\;

ww_valor_ULA(3) <= \valor_ULA[3]~output_o\;

ww_valor_ULA(4) <= \valor_ULA[4]~output_o\;

ww_valor_ULA(5) <= \valor_ULA[5]~output_o\;

ww_valor_ULA(6) <= \valor_ULA[6]~output_o\;

ww_valor_ULA(7) <= \valor_ULA[7]~output_o\;

ww_valor_CLOCK <= \valor_CLOCK~output_o\;
END structure;


