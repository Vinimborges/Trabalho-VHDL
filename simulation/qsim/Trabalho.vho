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

-- DATE "01/24/2025 18:33:11"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
	valor_X : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Trabalho;

-- Design Ports Information
-- controle_BCD	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_BCD	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_PC[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_PC[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_PC[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_PC[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[11]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[13]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Memoria[15]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_OPCODE[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_OPCODE[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_OPCODE[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Y[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Y[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Y[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Y[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Y[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Y[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Y[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_Y[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_X[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_X[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_X[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_X[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_X[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_X[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_X[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_X[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clock_div|led_status~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_div|Add0~0_combout\ : std_logic;
SIGNAL \clock_div|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div|Add0~1\ : std_logic;
SIGNAL \clock_div|Add0~2_combout\ : std_logic;
SIGNAL \clock_div|contador~0_combout\ : std_logic;
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
SIGNAL \clock_div|Add0~55\ : std_logic;
SIGNAL \clock_div|Add0~56_combout\ : std_logic;
SIGNAL \clock_div|Add0~57\ : std_logic;
SIGNAL \clock_div|Add0~58_combout\ : std_logic;
SIGNAL \clock_div|Add0~59\ : std_logic;
SIGNAL \clock_div|Add0~60_combout\ : std_logic;
SIGNAL \clock_div|Add0~61\ : std_logic;
SIGNAL \clock_div|Add0~62_combout\ : std_logic;
SIGNAL \clock_div|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div|led_status~0_combout\ : std_logic;
SIGNAL \clock_div|led_status~feeder_combout\ : std_logic;
SIGNAL \clock_div|led_status~q\ : std_logic;
SIGNAL \clock_div|led_status~clkctrl_outclk\ : std_logic;
SIGNAL \PC_in|sinal_PC~5_combout\ : std_logic;
SIGNAL \PC_in|Add0~0_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC~4_combout\ : std_logic;
SIGNAL \MEM_ini|Mux0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sinal_LER_final~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux2~0_combout\ : std_logic;
SIGNAL \Controle_ini|Equal0~0_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC~3_combout\ : std_logic;
SIGNAL \MEM_ini|Mux1~0_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC~2_combout\ : std_logic;
SIGNAL \MEM_ini|Mux9~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux8~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux7~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux6~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux5~0_combout\ : std_logic;
SIGNAL \MEM_ini|Mux5~1_combout\ : std_logic;
SIGNAL \MEM_ini|Mux4~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~0_combout\ : std_logic;
SIGNAL \REG_ini|REG_out[0]~0_combout\ : std_logic;
SIGNAL \Controle_ini|LER_out~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux7~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux7~1_combout\ : std_logic;
SIGNAL \Controle_ini|CARREGA_out~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~1\ : std_logic;
SIGNAL \ULA_ini|Add0~2_combout\ : std_logic;
SIGNAL \ULA_ini|Mux6~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux6~1_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~3\ : std_logic;
SIGNAL \ULA_ini|Add0~4_combout\ : std_logic;
SIGNAL \ULA_ini|Mux5~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux5~1_combout\ : std_logic;
SIGNAL \ULA_ini|Mux4~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~5\ : std_logic;
SIGNAL \ULA_ini|Add0~6_combout\ : std_logic;
SIGNAL \ULA_ini|Mux4~1_combout\ : std_logic;
SIGNAL \ULA_ini|Mux3~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~7\ : std_logic;
SIGNAL \ULA_ini|Add0~8_combout\ : std_logic;
SIGNAL \ULA_ini|Mux3~1_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~9\ : std_logic;
SIGNAL \ULA_ini|Add0~10_combout\ : std_logic;
SIGNAL \ULA_ini|Mux2~0_combout\ : std_logic;
SIGNAL \REG_ini|REG_out[5]~1_combout\ : std_logic;
SIGNAL \ULA_ini|Mux2~1_combout\ : std_logic;
SIGNAL \ULA_ini|Mux2~2_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~12_combout\ : std_logic;
SIGNAL \ULA_ini|Mux1~0_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~11\ : std_logic;
SIGNAL \ULA_ini|Add0~13_combout\ : std_logic;
SIGNAL \ULA_ini|Mux1~1_combout\ : std_logic;
SIGNAL \ULA_ini|Mux0~0_combout\ : std_logic;
SIGNAL \ULA_ini|Mux0~1_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~14\ : std_logic;
SIGNAL \ULA_ini|Add0~15_combout\ : std_logic;
SIGNAL \ULA_ini|Add0~17_combout\ : std_logic;
SIGNAL \PC_in|sinal_PC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_ini|instrucao_atual\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_ini|REG_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_div|contador\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_div|led_status~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_div|led_status~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X53_Y26_N23
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

-- Location: IOOBUF_X53_Y24_N23
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

-- Location: IOOBUF_X53_Y25_N2
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

-- Location: IOOBUF_X53_Y30_N2
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

-- Location: IOOBUF_X51_Y34_N16
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

-- Location: IOOBUF_X53_Y20_N16
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

-- Location: IOOBUF_X43_Y34_N23
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

-- Location: IOOBUF_X53_Y15_N9
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

-- Location: IOOBUF_X34_Y34_N2
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

-- Location: IOOBUF_X53_Y16_N9
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

-- Location: IOOBUF_X51_Y34_N23
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

-- Location: IOOBUF_X53_Y14_N2
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X49_Y34_N2
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

-- Location: IOOBUF_X53_Y22_N9
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

-- Location: IOOBUF_X11_Y34_N2
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

-- Location: IOOBUF_X23_Y34_N23
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

-- Location: IOOBUF_X0_Y4_N16
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X31_Y34_N2
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

-- Location: IOOBUF_X47_Y0_N23
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

-- Location: IOOBUF_X49_Y34_N9
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

-- Location: IOOBUF_X53_Y22_N2
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

-- Location: IOOBUF_X51_Y34_N9
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

-- Location: IOOBUF_X53_Y20_N23
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

-- Location: IOOBUF_X43_Y34_N16
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

-- Location: IOOBUF_X53_Y12_N2
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

-- Location: IOOBUF_X38_Y34_N16
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

-- Location: IOOBUF_X53_Y14_N9
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

-- Location: IOOBUF_X51_Y34_N2
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

-- Location: IOOBUF_X53_Y13_N9
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

-- Location: IOOBUF_X40_Y34_N9
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

-- Location: IOOBUF_X38_Y34_N2
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

-- Location: IOOBUF_X45_Y34_N2
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

-- Location: IOOBUF_X45_Y34_N16
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

-- Location: IOOBUF_X40_Y34_N2
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

-- Location: IOOBUF_X47_Y34_N23
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

-- Location: IOOBUF_X53_Y30_N9
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

-- Location: IOOBUF_X45_Y34_N9
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

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y26_N0
\clock_div|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~0_combout\ = \clock_div|contador\(0) $ (VCC)
-- \clock_div|Add0~1\ = CARRY(\clock_div|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(0),
	datad => VCC,
	combout => \clock_div|Add0~0_combout\,
	cout => \clock_div|Add0~1\);

-- Location: FF_X20_Y26_N1
\clock_div|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(0));

-- Location: LCCOMB_X21_Y26_N22
\clock_div|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~0_combout\ = (\clock_div|contador\(0) & (!\clock_div|contador\(2) & (!\clock_div|contador\(3) & !\clock_div|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(0),
	datab => \clock_div|contador\(2),
	datac => \clock_div|contador\(3),
	datad => \clock_div|contador\(1),
	combout => \clock_div|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y26_N20
\clock_div|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~1_combout\ = (!\clock_div|contador\(5) & (!\clock_div|contador\(6) & (!\clock_div|contador\(4) & !\clock_div|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(5),
	datab => \clock_div|contador\(6),
	datac => \clock_div|contador\(4),
	datad => \clock_div|contador\(7),
	combout => \clock_div|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y26_N4
\clock_div|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~3_combout\ = (!\clock_div|contador\(13) & (!\clock_div|contador\(14) & (!\clock_div|contador\(15) & !\clock_div|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(13),
	datab => \clock_div|contador\(14),
	datac => \clock_div|contador\(15),
	datad => \clock_div|contador\(12),
	combout => \clock_div|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y26_N12
\clock_div|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~2_combout\ = (!\clock_div|contador\(8) & (!\clock_div|contador\(10) & (!\clock_div|contador\(9) & !\clock_div|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(8),
	datab => \clock_div|contador\(10),
	datac => \clock_div|contador\(9),
	datad => \clock_div|contador\(11),
	combout => \clock_div|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y26_N26
\clock_div|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~4_combout\ = (\clock_div|Equal0~0_combout\ & (\clock_div|Equal0~1_combout\ & (\clock_div|Equal0~3_combout\ & \clock_div|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|Equal0~0_combout\,
	datab => \clock_div|Equal0~1_combout\,
	datac => \clock_div|Equal0~3_combout\,
	datad => \clock_div|Equal0~2_combout\,
	combout => \clock_div|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y26_N2
\clock_div|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~2_combout\ = (\clock_div|contador\(1) & (!\clock_div|Add0~1\)) # (!\clock_div|contador\(1) & ((\clock_div|Add0~1\) # (GND)))
-- \clock_div|Add0~3\ = CARRY((!\clock_div|Add0~1\) # (!\clock_div|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(1),
	datad => VCC,
	cin => \clock_div|Add0~1\,
	combout => \clock_div|Add0~2_combout\,
	cout => \clock_div|Add0~3\);

-- Location: LCCOMB_X21_Y26_N0
\clock_div|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|contador~0_combout\ = (\clock_div|Add0~2_combout\ & ((!\clock_div|Equal0~4_combout\) # (!\clock_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|Equal0~9_combout\,
	datac => \clock_div|Equal0~4_combout\,
	datad => \clock_div|Add0~2_combout\,
	combout => \clock_div|contador~0_combout\);

-- Location: FF_X20_Y26_N3
\clock_div|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \clock_div|contador~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(1));

-- Location: LCCOMB_X20_Y26_N4
\clock_div|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~4_combout\ = (\clock_div|contador\(2) & (\clock_div|Add0~3\ $ (GND))) # (!\clock_div|contador\(2) & (!\clock_div|Add0~3\ & VCC))
-- \clock_div|Add0~5\ = CARRY((\clock_div|contador\(2) & !\clock_div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(2),
	datad => VCC,
	cin => \clock_div|Add0~3\,
	combout => \clock_div|Add0~4_combout\,
	cout => \clock_div|Add0~5\);

-- Location: FF_X20_Y26_N5
\clock_div|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(2));

-- Location: LCCOMB_X20_Y26_N6
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

-- Location: FF_X20_Y26_N7
\clock_div|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(3));

-- Location: LCCOMB_X20_Y26_N8
\clock_div|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~8_combout\ = (\clock_div|contador\(4) & (\clock_div|Add0~7\ $ (GND))) # (!\clock_div|contador\(4) & (!\clock_div|Add0~7\ & VCC))
-- \clock_div|Add0~9\ = CARRY((\clock_div|contador\(4) & !\clock_div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(4),
	datad => VCC,
	cin => \clock_div|Add0~7\,
	combout => \clock_div|Add0~8_combout\,
	cout => \clock_div|Add0~9\);

-- Location: FF_X20_Y26_N9
\clock_div|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(4));

-- Location: LCCOMB_X20_Y26_N10
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

-- Location: FF_X20_Y26_N11
\clock_div|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(5));

-- Location: LCCOMB_X20_Y26_N12
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

-- Location: FF_X20_Y26_N13
\clock_div|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(6));

-- Location: LCCOMB_X20_Y26_N14
\clock_div|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~14_combout\ = (\clock_div|contador\(7) & (!\clock_div|Add0~13\)) # (!\clock_div|contador\(7) & ((\clock_div|Add0~13\) # (GND)))
-- \clock_div|Add0~15\ = CARRY((!\clock_div|Add0~13\) # (!\clock_div|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(7),
	datad => VCC,
	cin => \clock_div|Add0~13\,
	combout => \clock_div|Add0~14_combout\,
	cout => \clock_div|Add0~15\);

-- Location: FF_X20_Y26_N15
\clock_div|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(7));

-- Location: LCCOMB_X20_Y26_N16
\clock_div|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~16_combout\ = (\clock_div|contador\(8) & (\clock_div|Add0~15\ $ (GND))) # (!\clock_div|contador\(8) & (!\clock_div|Add0~15\ & VCC))
-- \clock_div|Add0~17\ = CARRY((\clock_div|contador\(8) & !\clock_div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(8),
	datad => VCC,
	cin => \clock_div|Add0~15\,
	combout => \clock_div|Add0~16_combout\,
	cout => \clock_div|Add0~17\);

-- Location: FF_X20_Y26_N17
\clock_div|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(8));

-- Location: LCCOMB_X20_Y26_N18
\clock_div|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~18_combout\ = (\clock_div|contador\(9) & (!\clock_div|Add0~17\)) # (!\clock_div|contador\(9) & ((\clock_div|Add0~17\) # (GND)))
-- \clock_div|Add0~19\ = CARRY((!\clock_div|Add0~17\) # (!\clock_div|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(9),
	datad => VCC,
	cin => \clock_div|Add0~17\,
	combout => \clock_div|Add0~18_combout\,
	cout => \clock_div|Add0~19\);

-- Location: FF_X20_Y26_N19
\clock_div|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(9));

-- Location: LCCOMB_X20_Y26_N20
\clock_div|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~20_combout\ = (\clock_div|contador\(10) & (\clock_div|Add0~19\ $ (GND))) # (!\clock_div|contador\(10) & (!\clock_div|Add0~19\ & VCC))
-- \clock_div|Add0~21\ = CARRY((\clock_div|contador\(10) & !\clock_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(10),
	datad => VCC,
	cin => \clock_div|Add0~19\,
	combout => \clock_div|Add0~20_combout\,
	cout => \clock_div|Add0~21\);

-- Location: FF_X20_Y26_N21
\clock_div|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(10));

-- Location: LCCOMB_X20_Y26_N22
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

-- Location: FF_X20_Y26_N23
\clock_div|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(11));

-- Location: LCCOMB_X20_Y26_N24
\clock_div|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~24_combout\ = (\clock_div|contador\(12) & (\clock_div|Add0~23\ $ (GND))) # (!\clock_div|contador\(12) & (!\clock_div|Add0~23\ & VCC))
-- \clock_div|Add0~25\ = CARRY((\clock_div|contador\(12) & !\clock_div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(12),
	datad => VCC,
	cin => \clock_div|Add0~23\,
	combout => \clock_div|Add0~24_combout\,
	cout => \clock_div|Add0~25\);

-- Location: FF_X20_Y26_N25
\clock_div|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(12));

-- Location: LCCOMB_X20_Y26_N26
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

-- Location: FF_X20_Y26_N27
\clock_div|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(13));

-- Location: LCCOMB_X20_Y26_N28
\clock_div|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~28_combout\ = (\clock_div|contador\(14) & (\clock_div|Add0~27\ $ (GND))) # (!\clock_div|contador\(14) & (!\clock_div|Add0~27\ & VCC))
-- \clock_div|Add0~29\ = CARRY((\clock_div|contador\(14) & !\clock_div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(14),
	datad => VCC,
	cin => \clock_div|Add0~27\,
	combout => \clock_div|Add0~28_combout\,
	cout => \clock_div|Add0~29\);

-- Location: FF_X20_Y26_N29
\clock_div|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(14));

-- Location: LCCOMB_X20_Y26_N30
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

-- Location: FF_X20_Y26_N31
\clock_div|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(15));

-- Location: LCCOMB_X20_Y25_N0
\clock_div|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~32_combout\ = (\clock_div|contador\(16) & (\clock_div|Add0~31\ $ (GND))) # (!\clock_div|contador\(16) & (!\clock_div|Add0~31\ & VCC))
-- \clock_div|Add0~33\ = CARRY((\clock_div|contador\(16) & !\clock_div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(16),
	datad => VCC,
	cin => \clock_div|Add0~31\,
	combout => \clock_div|Add0~32_combout\,
	cout => \clock_div|Add0~33\);

-- Location: FF_X20_Y25_N1
\clock_div|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(16));

-- Location: LCCOMB_X20_Y25_N2
\clock_div|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~34_combout\ = (\clock_div|contador\(17) & (!\clock_div|Add0~33\)) # (!\clock_div|contador\(17) & ((\clock_div|Add0~33\) # (GND)))
-- \clock_div|Add0~35\ = CARRY((!\clock_div|Add0~33\) # (!\clock_div|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(17),
	datad => VCC,
	cin => \clock_div|Add0~33\,
	combout => \clock_div|Add0~34_combout\,
	cout => \clock_div|Add0~35\);

-- Location: FF_X20_Y25_N3
\clock_div|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(17));

-- Location: LCCOMB_X20_Y25_N4
\clock_div|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~36_combout\ = (\clock_div|contador\(18) & (\clock_div|Add0~35\ $ (GND))) # (!\clock_div|contador\(18) & (!\clock_div|Add0~35\ & VCC))
-- \clock_div|Add0~37\ = CARRY((\clock_div|contador\(18) & !\clock_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(18),
	datad => VCC,
	cin => \clock_div|Add0~35\,
	combout => \clock_div|Add0~36_combout\,
	cout => \clock_div|Add0~37\);

-- Location: FF_X20_Y25_N5
\clock_div|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(18));

-- Location: LCCOMB_X20_Y25_N6
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

-- Location: FF_X20_Y25_N7
\clock_div|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(19));

-- Location: LCCOMB_X20_Y25_N8
\clock_div|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~40_combout\ = (\clock_div|contador\(20) & (\clock_div|Add0~39\ $ (GND))) # (!\clock_div|contador\(20) & (!\clock_div|Add0~39\ & VCC))
-- \clock_div|Add0~41\ = CARRY((\clock_div|contador\(20) & !\clock_div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(20),
	datad => VCC,
	cin => \clock_div|Add0~39\,
	combout => \clock_div|Add0~40_combout\,
	cout => \clock_div|Add0~41\);

-- Location: FF_X20_Y25_N9
\clock_div|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(20));

-- Location: LCCOMB_X20_Y25_N10
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

-- Location: FF_X20_Y25_N11
\clock_div|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(21));

-- Location: LCCOMB_X20_Y25_N12
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

-- Location: FF_X20_Y25_N13
\clock_div|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(22));

-- Location: LCCOMB_X20_Y25_N14
\clock_div|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~46_combout\ = (\clock_div|contador\(23) & (!\clock_div|Add0~45\)) # (!\clock_div|contador\(23) & ((\clock_div|Add0~45\) # (GND)))
-- \clock_div|Add0~47\ = CARRY((!\clock_div|Add0~45\) # (!\clock_div|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(23),
	datad => VCC,
	cin => \clock_div|Add0~45\,
	combout => \clock_div|Add0~46_combout\,
	cout => \clock_div|Add0~47\);

-- Location: FF_X20_Y25_N15
\clock_div|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(23));

-- Location: LCCOMB_X21_Y25_N30
\clock_div|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~6_combout\ = (!\clock_div|contador\(20) & (!\clock_div|contador\(22) & (!\clock_div|contador\(23) & !\clock_div|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(20),
	datab => \clock_div|contador\(22),
	datac => \clock_div|contador\(23),
	datad => \clock_div|contador\(21),
	combout => \clock_div|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y25_N16
\clock_div|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~48_combout\ = (\clock_div|contador\(24) & (\clock_div|Add0~47\ $ (GND))) # (!\clock_div|contador\(24) & (!\clock_div|Add0~47\ & VCC))
-- \clock_div|Add0~49\ = CARRY((\clock_div|contador\(24) & !\clock_div|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(24),
	datad => VCC,
	cin => \clock_div|Add0~47\,
	combout => \clock_div|Add0~48_combout\,
	cout => \clock_div|Add0~49\);

-- Location: FF_X20_Y25_N17
\clock_div|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(24));

-- Location: LCCOMB_X20_Y25_N18
\clock_div|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~50_combout\ = (\clock_div|contador\(25) & (!\clock_div|Add0~49\)) # (!\clock_div|contador\(25) & ((\clock_div|Add0~49\) # (GND)))
-- \clock_div|Add0~51\ = CARRY((!\clock_div|Add0~49\) # (!\clock_div|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(25),
	datad => VCC,
	cin => \clock_div|Add0~49\,
	combout => \clock_div|Add0~50_combout\,
	cout => \clock_div|Add0~51\);

-- Location: FF_X20_Y25_N19
\clock_div|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(25));

-- Location: LCCOMB_X20_Y25_N20
\clock_div|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~52_combout\ = (\clock_div|contador\(26) & (\clock_div|Add0~51\ $ (GND))) # (!\clock_div|contador\(26) & (!\clock_div|Add0~51\ & VCC))
-- \clock_div|Add0~53\ = CARRY((\clock_div|contador\(26) & !\clock_div|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(26),
	datad => VCC,
	cin => \clock_div|Add0~51\,
	combout => \clock_div|Add0~52_combout\,
	cout => \clock_div|Add0~53\);

-- Location: FF_X20_Y25_N21
\clock_div|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(26));

-- Location: LCCOMB_X20_Y25_N22
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

-- Location: FF_X20_Y25_N23
\clock_div|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(27));

-- Location: LCCOMB_X20_Y25_N24
\clock_div|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~56_combout\ = (\clock_div|contador\(28) & (\clock_div|Add0~55\ $ (GND))) # (!\clock_div|contador\(28) & (!\clock_div|Add0~55\ & VCC))
-- \clock_div|Add0~57\ = CARRY((\clock_div|contador\(28) & !\clock_div|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(28),
	datad => VCC,
	cin => \clock_div|Add0~55\,
	combout => \clock_div|Add0~56_combout\,
	cout => \clock_div|Add0~57\);

-- Location: FF_X20_Y25_N25
\clock_div|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(28));

-- Location: LCCOMB_X20_Y25_N26
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

-- Location: FF_X20_Y25_N27
\clock_div|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(29));

-- Location: LCCOMB_X20_Y25_N28
\clock_div|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Add0~60_combout\ = (\clock_div|contador\(30) & (\clock_div|Add0~59\ $ (GND))) # (!\clock_div|contador\(30) & (!\clock_div|Add0~59\ & VCC))
-- \clock_div|Add0~61\ = CARRY((\clock_div|contador\(30) & !\clock_div|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|contador\(30),
	datad => VCC,
	cin => \clock_div|Add0~59\,
	combout => \clock_div|Add0~60_combout\,
	cout => \clock_div|Add0~61\);

-- Location: FF_X20_Y25_N29
\clock_div|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(30));

-- Location: LCCOMB_X20_Y25_N30
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

-- Location: FF_X20_Y25_N31
\clock_div|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|contador\(31));

-- Location: LCCOMB_X21_Y25_N14
\clock_div|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~8_combout\ = (!\clock_div|contador\(29) & (!\clock_div|contador\(30) & (!\clock_div|contador\(28) & !\clock_div|contador\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(29),
	datab => \clock_div|contador\(30),
	datac => \clock_div|contador\(28),
	datad => \clock_div|contador\(31),
	combout => \clock_div|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y25_N8
\clock_div|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~7_combout\ = (!\clock_div|contador\(24) & (!\clock_div|contador\(26) & (!\clock_div|contador\(25) & !\clock_div|contador\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(24),
	datab => \clock_div|contador\(26),
	datac => \clock_div|contador\(25),
	datad => \clock_div|contador\(27),
	combout => \clock_div|Equal0~7_combout\);

-- Location: LCCOMB_X21_Y25_N28
\clock_div|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~5_combout\ = (!\clock_div|contador\(16) & (!\clock_div|contador\(18) & (!\clock_div|contador\(19) & !\clock_div|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|contador\(16),
	datab => \clock_div|contador\(18),
	datac => \clock_div|contador\(19),
	datad => \clock_div|contador\(17),
	combout => \clock_div|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y25_N0
\clock_div|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|Equal0~9_combout\ = (\clock_div|Equal0~6_combout\ & (\clock_div|Equal0~8_combout\ & (\clock_div|Equal0~7_combout\ & \clock_div|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div|Equal0~6_combout\,
	datab => \clock_div|Equal0~8_combout\,
	datac => \clock_div|Equal0~7_combout\,
	datad => \clock_div|Equal0~5_combout\,
	combout => \clock_div|Equal0~9_combout\);

-- Location: LCCOMB_X21_Y26_N10
\clock_div|led_status~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|led_status~0_combout\ = \clock_div|led_status~q\ $ (((\clock_div|Equal0~9_combout\ & \clock_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|Equal0~9_combout\,
	datac => \clock_div|Equal0~4_combout\,
	datad => \clock_div|led_status~q\,
	combout => \clock_div|led_status~0_combout\);

-- Location: LCCOMB_X21_Y26_N6
\clock_div|led_status~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_div|led_status~feeder_combout\ = \clock_div|led_status~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div|led_status~0_combout\,
	combout => \clock_div|led_status~feeder_combout\);

-- Location: FF_X21_Y26_N7
\clock_div|led_status\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clock_div|led_status~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div|led_status~q\);

-- Location: CLKCTRL_G12
\clock_div|led_status~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_div|led_status~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_div|led_status~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y29_N4
\PC_in|sinal_PC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC~5_combout\ = (!\Controle_ini|Equal0~0_combout\ & (\PC_in|sinal_PC\(2) $ (((\PC_in|sinal_PC\(1) & \PC_in|sinal_PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(0),
	datac => \PC_in|sinal_PC\(2),
	datad => \Controle_ini|Equal0~0_combout\,
	combout => \PC_in|sinal_PC~5_combout\);

-- Location: FF_X49_Y29_N5
\PC_in|sinal_PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \PC_in|sinal_PC~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_in|sinal_PC\(2));

-- Location: LCCOMB_X49_Y29_N22
\PC_in|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|Add0~0_combout\ = (\PC_in|sinal_PC\(1) & \PC_in|sinal_PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datad => \PC_in|sinal_PC\(0),
	combout => \PC_in|Add0~0_combout\);

-- Location: LCCOMB_X49_Y29_N18
\PC_in|sinal_PC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC~4_combout\ = (!\Controle_ini|Equal0~0_combout\ & (\PC_in|sinal_PC\(3) $ (((\PC_in|Add0~0_combout\ & \PC_in|sinal_PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|Add0~0_combout\,
	datab => \PC_in|sinal_PC\(2),
	datac => \PC_in|sinal_PC\(3),
	datad => \Controle_ini|Equal0~0_combout\,
	combout => \PC_in|sinal_PC~4_combout\);

-- Location: FF_X49_Y29_N19
\PC_in|sinal_PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \PC_in|sinal_PC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_in|sinal_PC\(3));

-- Location: LCCOMB_X47_Y29_N0
\MEM_ini|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux0~0_combout\ = (\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(2) & (\PC_in|sinal_PC\(3)))) # (!\PC_in|sinal_PC\(1) & ((\PC_in|sinal_PC\(3) $ (\PC_in|sinal_PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(2),
	datac => \PC_in|sinal_PC\(3),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux0~0_combout\);

-- Location: IOIBUF_X53_Y21_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X49_Y29_N14
\sinal_LER_final~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinal_LER_final~0_combout\ = (\reset~input_o\) # ((!\MEM_ini|instrucao_atual\(10)) # (!\MEM_ini|instrucao_atual\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(10),
	combout => \sinal_LER_final~0_combout\);

-- Location: FF_X48_Y29_N21
\MEM_ini|instrucao_atual[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	asdata => \MEM_ini|Mux0~0_combout\,
	sload => VCC,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(10));

-- Location: LCCOMB_X47_Y29_N28
\MEM_ini|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux2~0_combout\ = (\PC_in|sinal_PC\(3) $ (((\PC_in|sinal_PC\(1) & \PC_in|sinal_PC\(0))))) # (!\PC_in|sinal_PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(2),
	datac => \PC_in|sinal_PC\(3),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux2~0_combout\);

-- Location: FF_X47_Y29_N29
\MEM_ini|instrucao_atual[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \MEM_ini|Mux2~0_combout\,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(8));

-- Location: LCCOMB_X49_Y29_N12
\Controle_ini|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controle_ini|Equal0~0_combout\ = (\MEM_ini|instrucao_atual\(10) & (\MEM_ini|instrucao_atual\(9) & !\MEM_ini|instrucao_atual\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_ini|instrucao_atual\(10),
	datac => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(8),
	combout => \Controle_ini|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y29_N6
\PC_in|sinal_PC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC~3_combout\ = (!\Controle_ini|Equal0~0_combout\ & (\PC_in|sinal_PC\(0) $ (\PC_in|sinal_PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_in|sinal_PC\(0),
	datac => \PC_in|sinal_PC\(1),
	datad => \Controle_ini|Equal0~0_combout\,
	combout => \PC_in|sinal_PC~3_combout\);

-- Location: FF_X49_Y29_N7
\PC_in|sinal_PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \PC_in|sinal_PC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_in|sinal_PC\(1));

-- Location: LCCOMB_X49_Y29_N26
\MEM_ini|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux1~0_combout\ = (\PC_in|sinal_PC\(2) & ((\PC_in|sinal_PC\(0) & (\PC_in|sinal_PC\(1))) # (!\PC_in|sinal_PC\(0) & ((!\PC_in|sinal_PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(3),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux1~0_combout\);

-- Location: FF_X49_Y29_N27
\MEM_ini|instrucao_atual[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \MEM_ini|Mux1~0_combout\,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(9));

-- Location: LCCOMB_X49_Y29_N16
\PC_in|sinal_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_in|sinal_PC~2_combout\ = (!\PC_in|sinal_PC\(0) & (((\MEM_ini|instrucao_atual\(8)) # (!\MEM_ini|instrucao_atual\(10))) # (!\MEM_ini|instrucao_atual\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(9),
	datab => \MEM_ini|instrucao_atual\(10),
	datac => \PC_in|sinal_PC\(0),
	datad => \MEM_ini|instrucao_atual\(8),
	combout => \PC_in|sinal_PC~2_combout\);

-- Location: FF_X49_Y29_N17
\PC_in|sinal_PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \PC_in|sinal_PC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_in|sinal_PC\(0));

-- Location: LCCOMB_X49_Y29_N20
\MEM_ini|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux9~0_combout\ = (\PC_in|sinal_PC\(3) & (\PC_in|sinal_PC\(1) $ ((\PC_in|sinal_PC\(2))))) # (!\PC_in|sinal_PC\(3) & (((!\PC_in|sinal_PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(3),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux9~0_combout\);

-- Location: FF_X48_Y29_N19
\MEM_ini|instrucao_atual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	asdata => \MEM_ini|Mux9~0_combout\,
	sload => VCC,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(0));

-- Location: LCCOMB_X49_Y29_N8
\MEM_ini|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux8~0_combout\ = (\PC_in|sinal_PC\(1) & (((\PC_in|sinal_PC\(2) & !\PC_in|sinal_PC\(0))))) # (!\PC_in|sinal_PC\(1) & ((\PC_in|sinal_PC\(3) & ((!\PC_in|sinal_PC\(0)))) # (!\PC_in|sinal_PC\(3) & (!\PC_in|sinal_PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(3),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux8~0_combout\);

-- Location: FF_X48_Y29_N11
\MEM_ini|instrucao_atual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	asdata => \MEM_ini|Mux8~0_combout\,
	sload => VCC,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(1));

-- Location: LCCOMB_X49_Y29_N10
\MEM_ini|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux7~0_combout\ = (\PC_in|sinal_PC\(1) & (!\PC_in|sinal_PC\(3) & ((\PC_in|sinal_PC\(2)) # (!\PC_in|sinal_PC\(0))))) # (!\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(0) $ (((\PC_in|sinal_PC\(2)) # (!\PC_in|sinal_PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(3),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux7~0_combout\);

-- Location: FF_X48_Y29_N15
\MEM_ini|instrucao_atual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	asdata => \MEM_ini|Mux7~0_combout\,
	sload => VCC,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(2));

-- Location: LCCOMB_X49_Y29_N0
\MEM_ini|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux6~0_combout\ = (\PC_in|sinal_PC\(1) & ((\PC_in|sinal_PC\(2) & ((!\PC_in|sinal_PC\(0)))) # (!\PC_in|sinal_PC\(2) & (!\PC_in|sinal_PC\(3) & \PC_in|sinal_PC\(0))))) # (!\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(3) & ((!\PC_in|sinal_PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(3),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux6~0_combout\);

-- Location: FF_X48_Y29_N13
\MEM_ini|instrucao_atual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	asdata => \MEM_ini|Mux6~0_combout\,
	sload => VCC,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(3));

-- Location: LCCOMB_X47_Y29_N14
\MEM_ini|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux5~0_combout\ = (!\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(2) & (\PC_in|sinal_PC\(3) & !\PC_in|sinal_PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(2),
	datac => \PC_in|sinal_PC\(3),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux5~0_combout\);

-- Location: FF_X48_Y29_N9
\MEM_ini|instrucao_atual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	asdata => \MEM_ini|Mux5~0_combout\,
	sload => VCC,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(4));

-- Location: LCCOMB_X49_Y29_N24
\MEM_ini|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux5~1_combout\ = (!\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(3) & !\PC_in|sinal_PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(3),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux5~1_combout\);

-- Location: FF_X49_Y29_N25
\MEM_ini|instrucao_atual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \MEM_ini|Mux5~1_combout\,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(5));

-- Location: LCCOMB_X49_Y29_N30
\MEM_ini|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ini|Mux4~0_combout\ = (!\PC_in|sinal_PC\(1) & (\PC_in|sinal_PC\(3) & (\PC_in|sinal_PC\(2) $ (\PC_in|sinal_PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_in|sinal_PC\(1),
	datab => \PC_in|sinal_PC\(3),
	datac => \PC_in|sinal_PC\(2),
	datad => \PC_in|sinal_PC\(0),
	combout => \MEM_ini|Mux4~0_combout\);

-- Location: FF_X48_Y29_N17
\MEM_ini|instrucao_atual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	asdata => \MEM_ini|Mux4~0_combout\,
	sload => VCC,
	ena => \sinal_LER_final~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ini|instrucao_atual\(6));

-- Location: LCCOMB_X48_Y29_N6
\ULA_ini|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~0_combout\ = (\MEM_ini|instrucao_atual\(0) & (\REG_ini|REG_out\(0) $ (VCC))) # (!\MEM_ini|instrucao_atual\(0) & (\REG_ini|REG_out\(0) & VCC))
-- \ULA_ini|Add0~1\ = CARRY((\MEM_ini|instrucao_atual\(0) & \REG_ini|REG_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(0),
	datab => \REG_ini|REG_out\(0),
	datad => VCC,
	combout => \ULA_ini|Add0~0_combout\,
	cout => \ULA_ini|Add0~1\);

-- Location: LCCOMB_X47_Y29_N22
\REG_ini|REG_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ini|REG_out[0]~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10)) # (\MEM_ini|instrucao_atual\(9)))) # (!\MEM_ini|instrucao_atual\(8) & ((!\MEM_ini|instrucao_atual\(9)) # (!\MEM_ini|instrucao_atual\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \MEM_ini|instrucao_atual\(9),
	combout => \REG_ini|REG_out[0]~0_combout\);

-- Location: LCCOMB_X47_Y29_N26
\Controle_ini|LER_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controle_ini|LER_out~0_combout\ = \MEM_ini|instrucao_atual\(10) $ (\MEM_ini|instrucao_atual\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \MEM_ini|instrucao_atual\(9),
	combout => \Controle_ini|LER_out~0_combout\);

-- Location: LCCOMB_X47_Y29_N24
\ULA_ini|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux7~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(0)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(0))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & ((!\REG_ini|REG_out\(0)))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\MEM_ini|instrucao_atual\(0) & \REG_ini|REG_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \MEM_ini|instrucao_atual\(0),
	datac => \MEM_ini|instrucao_atual\(8),
	datad => \REG_ini|REG_out\(0),
	combout => \ULA_ini|Mux7~0_combout\);

-- Location: LCCOMB_X48_Y29_N28
\ULA_ini|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux7~1_combout\ = (\ULA_ini|Add0~0_combout\ & (((\Controle_ini|LER_out~0_combout\ & \ULA_ini|Mux7~0_combout\)) # (!\REG_ini|REG_out[0]~0_combout\))) # (!\ULA_ini|Add0~0_combout\ & (((\Controle_ini|LER_out~0_combout\ & \ULA_ini|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Add0~0_combout\,
	datab => \REG_ini|REG_out[0]~0_combout\,
	datac => \Controle_ini|LER_out~0_combout\,
	datad => \ULA_ini|Mux7~0_combout\,
	combout => \ULA_ini|Mux7~1_combout\);

-- Location: LCCOMB_X49_Y29_N28
\Controle_ini|CARREGA_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controle_ini|CARREGA_out~0_combout\ = (\MEM_ini|instrucao_atual\(10) & (!\MEM_ini|instrucao_atual\(9))) # (!\MEM_ini|instrucao_atual\(10) & ((\MEM_ini|instrucao_atual\(9)) # (\MEM_ini|instrucao_atual\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_ini|instrucao_atual\(10),
	datac => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(8),
	combout => \Controle_ini|CARREGA_out~0_combout\);

-- Location: FF_X48_Y29_N29
\REG_ini|REG_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \ULA_ini|Mux7~1_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(0));

-- Location: LCCOMB_X48_Y29_N8
\ULA_ini|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~2_combout\ = (\MEM_ini|instrucao_atual\(1) & ((\REG_ini|REG_out\(1) & (\ULA_ini|Add0~1\ & VCC)) # (!\REG_ini|REG_out\(1) & (!\ULA_ini|Add0~1\)))) # (!\MEM_ini|instrucao_atual\(1) & ((\REG_ini|REG_out\(1) & (!\ULA_ini|Add0~1\)) # 
-- (!\REG_ini|REG_out\(1) & ((\ULA_ini|Add0~1\) # (GND)))))
-- \ULA_ini|Add0~3\ = CARRY((\MEM_ini|instrucao_atual\(1) & (!\REG_ini|REG_out\(1) & !\ULA_ini|Add0~1\)) # (!\MEM_ini|instrucao_atual\(1) & ((!\ULA_ini|Add0~1\) # (!\REG_ini|REG_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(1),
	datab => \REG_ini|REG_out\(1),
	datad => VCC,
	cin => \ULA_ini|Add0~1\,
	combout => \ULA_ini|Add0~2_combout\,
	cout => \ULA_ini|Add0~3\);

-- Location: LCCOMB_X47_Y29_N20
\ULA_ini|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux6~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(1)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(1))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & ((!\REG_ini|REG_out\(1)))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\MEM_ini|instrucao_atual\(1) & \REG_ini|REG_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(1),
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \REG_ini|REG_out\(1),
	combout => \ULA_ini|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y29_N2
\ULA_ini|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux6~1_combout\ = (\Controle_ini|LER_out~0_combout\ & ((\ULA_ini|Mux6~0_combout\) # ((!\REG_ini|REG_out[0]~0_combout\ & \ULA_ini|Add0~2_combout\)))) # (!\Controle_ini|LER_out~0_combout\ & (!\REG_ini|REG_out[0]~0_combout\ & 
-- (\ULA_ini|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controle_ini|LER_out~0_combout\,
	datab => \REG_ini|REG_out[0]~0_combout\,
	datac => \ULA_ini|Add0~2_combout\,
	datad => \ULA_ini|Mux6~0_combout\,
	combout => \ULA_ini|Mux6~1_combout\);

-- Location: FF_X48_Y29_N3
\REG_ini|REG_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \ULA_ini|Mux6~1_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(1));

-- Location: LCCOMB_X48_Y29_N10
\ULA_ini|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~4_combout\ = ((\MEM_ini|instrucao_atual\(2) $ (\REG_ini|REG_out\(2) $ (!\ULA_ini|Add0~3\)))) # (GND)
-- \ULA_ini|Add0~5\ = CARRY((\MEM_ini|instrucao_atual\(2) & ((\REG_ini|REG_out\(2)) # (!\ULA_ini|Add0~3\))) # (!\MEM_ini|instrucao_atual\(2) & (\REG_ini|REG_out\(2) & !\ULA_ini|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(2),
	datab => \REG_ini|REG_out\(2),
	datad => VCC,
	cin => \ULA_ini|Add0~3\,
	combout => \ULA_ini|Add0~4_combout\,
	cout => \ULA_ini|Add0~5\);

-- Location: LCCOMB_X47_Y29_N30
\ULA_ini|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux5~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(2)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(2))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & ((!\REG_ini|REG_out\(2)))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\MEM_ini|instrucao_atual\(2) & \REG_ini|REG_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(2),
	datad => \REG_ini|REG_out\(2),
	combout => \ULA_ini|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y29_N24
\ULA_ini|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux5~1_combout\ = (\Controle_ini|LER_out~0_combout\ & ((\ULA_ini|Mux5~0_combout\) # ((!\REG_ini|REG_out[0]~0_combout\ & \ULA_ini|Add0~4_combout\)))) # (!\Controle_ini|LER_out~0_combout\ & (!\REG_ini|REG_out[0]~0_combout\ & 
-- (\ULA_ini|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controle_ini|LER_out~0_combout\,
	datab => \REG_ini|REG_out[0]~0_combout\,
	datac => \ULA_ini|Add0~4_combout\,
	datad => \ULA_ini|Mux5~0_combout\,
	combout => \ULA_ini|Mux5~1_combout\);

-- Location: FF_X48_Y29_N25
\REG_ini|REG_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \ULA_ini|Mux5~1_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(2));

-- Location: LCCOMB_X47_Y29_N4
\ULA_ini|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux4~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(3)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(3))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & ((!\REG_ini|REG_out\(3)))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\MEM_ini|instrucao_atual\(3) & \REG_ini|REG_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(3),
	datad => \REG_ini|REG_out\(3),
	combout => \ULA_ini|Mux4~0_combout\);

-- Location: LCCOMB_X48_Y29_N12
\ULA_ini|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~6_combout\ = (\REG_ini|REG_out\(3) & ((\MEM_ini|instrucao_atual\(3) & (\ULA_ini|Add0~5\ & VCC)) # (!\MEM_ini|instrucao_atual\(3) & (!\ULA_ini|Add0~5\)))) # (!\REG_ini|REG_out\(3) & ((\MEM_ini|instrucao_atual\(3) & (!\ULA_ini|Add0~5\)) # 
-- (!\MEM_ini|instrucao_atual\(3) & ((\ULA_ini|Add0~5\) # (GND)))))
-- \ULA_ini|Add0~7\ = CARRY((\REG_ini|REG_out\(3) & (!\MEM_ini|instrucao_atual\(3) & !\ULA_ini|Add0~5\)) # (!\REG_ini|REG_out\(3) & ((!\ULA_ini|Add0~5\) # (!\MEM_ini|instrucao_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(3),
	datab => \MEM_ini|instrucao_atual\(3),
	datad => VCC,
	cin => \ULA_ini|Add0~5\,
	combout => \ULA_ini|Add0~6_combout\,
	cout => \ULA_ini|Add0~7\);

-- Location: LCCOMB_X48_Y29_N22
\ULA_ini|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux4~1_combout\ = (\Controle_ini|LER_out~0_combout\ & ((\ULA_ini|Mux4~0_combout\) # ((!\REG_ini|REG_out[0]~0_combout\ & \ULA_ini|Add0~6_combout\)))) # (!\Controle_ini|LER_out~0_combout\ & (!\REG_ini|REG_out[0]~0_combout\ & 
-- ((\ULA_ini|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controle_ini|LER_out~0_combout\,
	datab => \REG_ini|REG_out[0]~0_combout\,
	datac => \ULA_ini|Mux4~0_combout\,
	datad => \ULA_ini|Add0~6_combout\,
	combout => \ULA_ini|Mux4~1_combout\);

-- Location: FF_X48_Y29_N23
\REG_ini|REG_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \ULA_ini|Mux4~1_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(3));

-- Location: LCCOMB_X47_Y29_N18
\ULA_ini|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux3~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(4)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(4))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & ((!\REG_ini|REG_out\(4)))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\MEM_ini|instrucao_atual\(4) & \REG_ini|REG_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(4),
	datad => \REG_ini|REG_out\(4),
	combout => \ULA_ini|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y29_N14
\ULA_ini|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~8_combout\ = ((\MEM_ini|instrucao_atual\(4) $ (\REG_ini|REG_out\(4) $ (!\ULA_ini|Add0~7\)))) # (GND)
-- \ULA_ini|Add0~9\ = CARRY((\MEM_ini|instrucao_atual\(4) & ((\REG_ini|REG_out\(4)) # (!\ULA_ini|Add0~7\))) # (!\MEM_ini|instrucao_atual\(4) & (\REG_ini|REG_out\(4) & !\ULA_ini|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(4),
	datab => \REG_ini|REG_out\(4),
	datad => VCC,
	cin => \ULA_ini|Add0~7\,
	combout => \ULA_ini|Add0~8_combout\,
	cout => \ULA_ini|Add0~9\);

-- Location: LCCOMB_X48_Y29_N4
\ULA_ini|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux3~1_combout\ = (\Controle_ini|LER_out~0_combout\ & ((\ULA_ini|Mux3~0_combout\) # ((\ULA_ini|Add0~8_combout\ & !\REG_ini|REG_out[0]~0_combout\)))) # (!\Controle_ini|LER_out~0_combout\ & (((\ULA_ini|Add0~8_combout\ & 
-- !\REG_ini|REG_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controle_ini|LER_out~0_combout\,
	datab => \ULA_ini|Mux3~0_combout\,
	datac => \ULA_ini|Add0~8_combout\,
	datad => \REG_ini|REG_out[0]~0_combout\,
	combout => \ULA_ini|Mux3~1_combout\);

-- Location: FF_X48_Y29_N5
\REG_ini|REG_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \ULA_ini|Mux3~1_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(4));

-- Location: LCCOMB_X48_Y29_N16
\ULA_ini|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~10_combout\ = (\REG_ini|REG_out\(5) & ((\MEM_ini|instrucao_atual\(5) & (\ULA_ini|Add0~9\ & VCC)) # (!\MEM_ini|instrucao_atual\(5) & (!\ULA_ini|Add0~9\)))) # (!\REG_ini|REG_out\(5) & ((\MEM_ini|instrucao_atual\(5) & (!\ULA_ini|Add0~9\)) # 
-- (!\MEM_ini|instrucao_atual\(5) & ((\ULA_ini|Add0~9\) # (GND)))))
-- \ULA_ini|Add0~11\ = CARRY((\REG_ini|REG_out\(5) & (!\MEM_ini|instrucao_atual\(5) & !\ULA_ini|Add0~9\)) # (!\REG_ini|REG_out\(5) & ((!\ULA_ini|Add0~9\) # (!\MEM_ini|instrucao_atual\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(5),
	datab => \MEM_ini|instrucao_atual\(5),
	datad => VCC,
	cin => \ULA_ini|Add0~9\,
	combout => \ULA_ini|Add0~10_combout\,
	cout => \ULA_ini|Add0~11\);

-- Location: LCCOMB_X49_Y29_N2
\ULA_ini|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux2~0_combout\ = (!\MEM_ini|instrucao_atual\(9) & \MEM_ini|instrucao_atual\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_ini|instrucao_atual\(9),
	datad => \MEM_ini|instrucao_atual\(5),
	combout => \ULA_ini|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y29_N12
\REG_ini|REG_out[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG_ini|REG_out[5]~1_combout\ = (!\MEM_ini|instrucao_atual\(10) & ((\MEM_ini|instrucao_atual\(8)) # (\MEM_ini|instrucao_atual\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(10),
	datad => \MEM_ini|instrucao_atual\(9),
	combout => \REG_ini|REG_out[5]~1_combout\);

-- Location: LCCOMB_X47_Y29_N10
\ULA_ini|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux2~1_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\REG_ini|REG_out\(5)) # ((\MEM_ini|instrucao_atual\(5)) # (!\REG_ini|REG_out[5]~1_combout\)))) # (!\MEM_ini|instrucao_atual\(8) & (\REG_ini|REG_out\(5) & (\MEM_ini|instrucao_atual\(5) & 
-- \REG_ini|REG_out[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(8),
	datab => \REG_ini|REG_out\(5),
	datac => \MEM_ini|instrucao_atual\(5),
	datad => \REG_ini|REG_out[5]~1_combout\,
	combout => \ULA_ini|Mux2~1_combout\);

-- Location: LCCOMB_X47_Y29_N8
\ULA_ini|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux2~2_combout\ = (\MEM_ini|instrucao_atual\(10) & ((\ULA_ini|Mux2~1_combout\ & ((\ULA_ini|Mux2~0_combout\))) # (!\ULA_ini|Mux2~1_combout\ & (!\REG_ini|REG_out\(5))))) # (!\MEM_ini|instrucao_atual\(10) & (((\ULA_ini|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \REG_ini|REG_out\(5),
	datac => \ULA_ini|Mux2~0_combout\,
	datad => \ULA_ini|Mux2~1_combout\,
	combout => \ULA_ini|Mux2~2_combout\);

-- Location: LCCOMB_X48_Y29_N26
\ULA_ini|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~12_combout\ = (\REG_ini|REG_out[0]~0_combout\ & ((\ULA_ini|Mux2~2_combout\))) # (!\REG_ini|REG_out[0]~0_combout\ & (\ULA_ini|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA_ini|Add0~10_combout\,
	datac => \REG_ini|REG_out[0]~0_combout\,
	datad => \ULA_ini|Mux2~2_combout\,
	combout => \ULA_ini|Add0~12_combout\);

-- Location: FF_X48_Y29_N27
\REG_ini|REG_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \ULA_ini|Add0~12_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(5));

-- Location: LCCOMB_X47_Y29_N2
\ULA_ini|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux1~0_combout\ = (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(6)) # ((!\MEM_ini|instrucao_atual\(10) & \REG_ini|REG_out\(6))))) # (!\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(10) & (!\REG_ini|REG_out\(6))) # 
-- (!\MEM_ini|instrucao_atual\(10) & (\REG_ini|REG_out\(6) & \MEM_ini|instrucao_atual\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(10),
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \REG_ini|REG_out\(6),
	datad => \MEM_ini|instrucao_atual\(6),
	combout => \ULA_ini|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y29_N18
\ULA_ini|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~13_combout\ = ((\MEM_ini|instrucao_atual\(6) $ (\REG_ini|REG_out\(6) $ (!\ULA_ini|Add0~11\)))) # (GND)
-- \ULA_ini|Add0~14\ = CARRY((\MEM_ini|instrucao_atual\(6) & ((\REG_ini|REG_out\(6)) # (!\ULA_ini|Add0~11\))) # (!\MEM_ini|instrucao_atual\(6) & (\REG_ini|REG_out\(6) & !\ULA_ini|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ini|instrucao_atual\(6),
	datab => \REG_ini|REG_out\(6),
	datad => VCC,
	cin => \ULA_ini|Add0~11\,
	combout => \ULA_ini|Add0~13_combout\,
	cout => \ULA_ini|Add0~14\);

-- Location: LCCOMB_X48_Y29_N0
\ULA_ini|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux1~1_combout\ = (\ULA_ini|Mux1~0_combout\ & ((\Controle_ini|LER_out~0_combout\) # ((!\REG_ini|REG_out[0]~0_combout\ & \ULA_ini|Add0~13_combout\)))) # (!\ULA_ini|Mux1~0_combout\ & (!\REG_ini|REG_out[0]~0_combout\ & 
-- ((\ULA_ini|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_ini|Mux1~0_combout\,
	datab => \REG_ini|REG_out[0]~0_combout\,
	datac => \Controle_ini|LER_out~0_combout\,
	datad => \ULA_ini|Add0~13_combout\,
	combout => \ULA_ini|Mux1~1_combout\);

-- Location: FF_X48_Y29_N1
\REG_ini|REG_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \ULA_ini|Mux1~1_combout\,
	ena => \Controle_ini|CARREGA_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ini|REG_out\(6));

-- Location: LCCOMB_X47_Y29_N16
\ULA_ini|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Mux0~0_combout\ = (\REG_ini|REG_out\(7) & ((\MEM_ini|instrucao_atual\(8)) # ((\MEM_ini|instrucao_atual\(5) & \REG_ini|REG_out[5]~1_combout\)))) # (!\REG_ini|REG_out\(7) & (\MEM_ini|instrucao_atual\(8) & ((\MEM_ini|instrucao_atual\(5)) # 
-- (!\REG_ini|REG_out[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(7),
	datab => \MEM_ini|instrucao_atual\(8),
	datac => \MEM_ini|instrucao_atual\(5),
	datad => \REG_ini|REG_out[5]~1_combout\,
	combout => \ULA_ini|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y29_N6
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

-- Location: LCCOMB_X48_Y29_N20
\ULA_ini|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~15_combout\ = \REG_ini|REG_out\(7) $ (\MEM_ini|instrucao_atual\(5) $ (\ULA_ini|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ini|REG_out\(7),
	datab => \MEM_ini|instrucao_atual\(5),
	cin => \ULA_ini|Add0~14\,
	combout => \ULA_ini|Add0~15_combout\);

-- Location: LCCOMB_X48_Y29_N30
\ULA_ini|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_ini|Add0~17_combout\ = (\REG_ini|REG_out[0]~0_combout\ & (\ULA_ini|Mux0~1_combout\)) # (!\REG_ini|REG_out[0]~0_combout\ & ((\ULA_ini|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ini|REG_out[0]~0_combout\,
	datac => \ULA_ini|Mux0~1_combout\,
	datad => \ULA_ini|Add0~15_combout\,
	combout => \ULA_ini|Add0~17_combout\);

-- Location: FF_X48_Y29_N31
\REG_ini|REG_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div|led_status~clkctrl_outclk\,
	d => \ULA_ini|Add0~17_combout\,
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
END structure;


