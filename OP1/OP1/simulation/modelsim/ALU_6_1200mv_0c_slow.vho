-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/11/2019 17:12:11"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	operacion : IN std_logic_vector(2 DOWNTO 0);
	S : OUT std_logic_vector(7 DOWNTO 0);
	S_onebit : OUT std_logic;
	OVERFLOW : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- clk	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_onebit	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVERFLOW	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operacion[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operacion[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operacion[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_operacion : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S_onebit : std_logic;
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL \Mux8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S_onebit~output_o\ : std_logic;
SIGNAL \OVERFLOW~output_o\ : std_logic;
SIGNAL \operacion[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \operacion[0]~input_o\ : std_logic;
SIGNAL \operacion[2]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~0clkctrl_outclk\ : std_logic;
SIGNAL \S[0]$latch~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \suma|full_adder_1|COUT~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \S[1]$latch~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \resta|full_adder_2|COUT~0_combout\ : std_logic;
SIGNAL \resta|full_adder_2|COUT~1_combout\ : std_logic;
SIGNAL \suma|full_adder_1|COUT~1_combout\ : std_logic;
SIGNAL \suma|full_adder_2|COUT~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \S[2]$latch~combout\ : std_logic;
SIGNAL \suma|full_adder_3|COUT~0_combout\ : std_logic;
SIGNAL \resta|full_adder_3|COUT~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \S[3]$latch~combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \suma|full_adder_4|COUT~0_combout\ : std_logic;
SIGNAL \resta|full_adder_4|COUT~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \S[4]$latch~combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \suma|full_adder_5|COUT~0_combout\ : std_logic;
SIGNAL \resta|full_adder_5|COUT~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \S[5]$latch~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \resta|full_adder_6|COUT~0_combout\ : std_logic;
SIGNAL \suma|full_adder_6|COUT~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \S[6]$latch~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \suma|full_adder_7|COUT~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \resta|full_adder_7|COUT~0_combout\ : std_logic;
SIGNAL \resta|full_adder_8|S~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \S[7]$latch~combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \mayor|LessThan0~1_cout\ : std_logic;
SIGNAL \mayor|LessThan0~3_cout\ : std_logic;
SIGNAL \mayor|LessThan0~5_cout\ : std_logic;
SIGNAL \mayor|LessThan0~7_cout\ : std_logic;
SIGNAL \mayor|LessThan0~9_cout\ : std_logic;
SIGNAL \mayor|LessThan0~11_cout\ : std_logic;
SIGNAL \mayor|LessThan0~13_cout\ : std_logic;
SIGNAL \mayor|LessThan0~14_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \S_onebit$latch~combout\ : std_logic;
SIGNAL \suma|Y_S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \OROP|o\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_A <= A;
ww_B <= B;
ww_operacion <= operacion;
S <= ww_S;
S_onebit <= ww_S_onebit;
OVERFLOW <= ww_OVERFLOW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux8~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux8~0_combout\);

-- Location: IOOBUF_X26_Y0_N9
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[0]$latch~combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[1]$latch~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[2]$latch~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[3]$latch~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\S[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[4]$latch~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\S[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[5]$latch~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\S[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[6]$latch~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\S[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[7]$latch~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\S_onebit~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_onebit$latch~combout\,
	devoe => ww_devoe,
	o => \S_onebit~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\OVERFLOW~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OVERFLOW~output_o\);

-- Location: IOIBUF_X33_Y15_N1
\operacion[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operacion(1),
	o => \operacion[1]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\operacion[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operacion(0),
	o => \operacion[0]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\operacion[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operacion(2),
	o => \operacion[2]~input_o\);

-- Location: LCCOMB_X32_Y12_N0
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\ & ((\operacion[2]~input_o\))) # (!\B[0]~input_o\ & ((\operacion[0]~input_o\) # (!\operacion[2]~input_o\))))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & ((\operacion[0]~input_o\) # 
-- (!\operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \operacion[0]~input_o\,
	datad => \operacion[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y12_N10
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((!\operacion[2]~input_o\) # (!\operacion[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[1]~input_o\,
	datab => \Mux0~0_combout\,
	datad => \operacion[2]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X32_Y13_N2
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\operacion[2]~input_o\) # (\operacion[1]~input_o\ $ (\operacion[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[1]~input_o\,
	datac => \operacion[2]~input_o\,
	datad => \operacion[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: CLKCTRL_G8
\Mux8~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux8~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y11_N10
\S[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S[0]$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux0~1_combout\))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\S[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]$latch~combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux8~0clkctrl_outclk\,
	combout => \S[0]$latch~combout\);

-- Location: IOIBUF_X31_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X31_Y11_N8
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\operacion[2]~input_o\ & ((\operacion[0]~input_o\))) # (!\operacion[2]~input_o\ & (\operacion[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operacion[1]~input_o\,
	datac => \operacion[2]~input_o\,
	datad => \operacion[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X32_Y12_N14
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & ((\operacion[2]~input_o\) # (!\Mux0~2_combout\))) # (!\B[1]~input_o\ & ((\Mux0~2_combout\) # (!\operacion[2]~input_o\))))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \operacion[2]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X32_Y12_N22
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\B[0]~input_o\ & (\operacion[0]~input_o\ $ (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \operacion[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y12_N16
\suma|full_adder_1|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|full_adder_1|COUT~0_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\operacion[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \operacion[1]~input_o\,
	combout => \suma|full_adder_1|COUT~0_combout\);

-- Location: LCCOMB_X32_Y10_N24
\suma|Y_S[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|Y_S\(1) = \B[1]~input_o\ $ (\operacion[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \operacion[1]~input_o\,
	combout => \suma|Y_S\(1));

-- Location: LCCOMB_X32_Y12_N20
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux0~2_combout\ & (\Mux1~0_combout\)) # (!\Mux0~2_combout\ & ((\suma|full_adder_1|COUT~0_combout\ $ (\suma|Y_S\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \suma|full_adder_1|COUT~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \suma|Y_S\(1),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X32_Y12_N12
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\operacion[2]~input_o\ & (\Mux1~2_combout\ & ((!\operacion[1]~input_o\)))) # (!\operacion[2]~input_o\ & (\Mux1~2_combout\ $ ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \operacion[2]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \operacion[1]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X32_Y12_N6
\S[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S[1]$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux1~3_combout\))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\S[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]$latch~combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux8~0clkctrl_outclk\,
	combout => \S[1]$latch~combout\);

-- Location: IOIBUF_X33_Y10_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X32_Y12_N18
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\ & (\operacion[2]~input_o\)) # (!\B[2]~input_o\ & ((\Mux0~2_combout\) # (!\operacion[2]~input_o\))))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & ((\Mux0~2_combout\) # (!\operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \operacion[2]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X32_Y11_N0
\resta|full_adder_2|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resta|full_adder_2|COUT~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (\operacion[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \operacion[0]~input_o\,
	combout => \resta|full_adder_2|COUT~0_combout\);

-- Location: LCCOMB_X32_Y11_N30
\resta|full_adder_2|COUT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resta|full_adder_2|COUT~1_combout\ = (\B[1]~input_o\ & ((\resta|full_adder_2|COUT~0_combout\ & (!\operacion[0]~input_o\)) # (!\resta|full_adder_2|COUT~0_combout\ & ((\A[1]~input_o\))))) # (!\B[1]~input_o\ & ((\resta|full_adder_2|COUT~0_combout\ & 
-- ((\A[1]~input_o\))) # (!\resta|full_adder_2|COUT~0_combout\ & (\operacion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \resta|full_adder_2|COUT~0_combout\,
	combout => \resta|full_adder_2|COUT~1_combout\);

-- Location: LCCOMB_X32_Y10_N30
\suma|full_adder_1|COUT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|full_adder_1|COUT~1_combout\ = (!\B[0]~input_o\ & \operacion[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \operacion[1]~input_o\,
	combout => \suma|full_adder_1|COUT~1_combout\);

-- Location: LCCOMB_X32_Y12_N30
\suma|full_adder_2|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|full_adder_2|COUT~0_combout\ = (\A[1]~input_o\ & ((\suma|full_adder_1|COUT~1_combout\) # ((\suma|Y_S\(1)) # (\suma|full_adder_1|COUT~0_combout\)))) # (!\A[1]~input_o\ & (\suma|Y_S\(1) & ((\suma|full_adder_1|COUT~1_combout\) # 
-- (\suma|full_adder_1|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \suma|full_adder_1|COUT~1_combout\,
	datac => \suma|Y_S\(1),
	datad => \suma|full_adder_1|COUT~0_combout\,
	combout => \suma|full_adder_2|COUT~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux0~2_combout\ & (\resta|full_adder_2|COUT~1_combout\ $ (((\operacion[0]~input_o\))))) # (!\Mux0~2_combout\ & (((\suma|full_adder_2|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resta|full_adder_2|COUT~1_combout\,
	datab => \suma|full_adder_2|COUT~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \operacion[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X32_Y12_N4
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\operacion[2]~input_o\ & (\Mux2~1_combout\ & ((!\operacion[1]~input_o\)))) # (!\operacion[2]~input_o\ & (\Mux2~1_combout\ $ ((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \operacion[2]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \operacion[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X32_Y12_N8
\S[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S[2]$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & (\Mux2~2_combout\)) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & ((\S[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~2_combout\,
	datac => \S[2]$latch~combout\,
	datad => \Mux8~0clkctrl_outclk\,
	combout => \S[2]$latch~combout\);

-- Location: LCCOMB_X32_Y10_N0
\suma|full_adder_3|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|full_adder_3|COUT~0_combout\ = (\A[2]~input_o\ & ((\suma|full_adder_2|COUT~0_combout\) # (\B[2]~input_o\ $ (\operacion[1]~input_o\)))) # (!\A[2]~input_o\ & (\suma|full_adder_2|COUT~0_combout\ & (\B[2]~input_o\ $ (\operacion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \suma|full_adder_2|COUT~0_combout\,
	datac => \B[2]~input_o\,
	datad => \operacion[1]~input_o\,
	combout => \suma|full_adder_3|COUT~0_combout\);

-- Location: LCCOMB_X32_Y11_N12
\resta|full_adder_3|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resta|full_adder_3|COUT~0_combout\ = (\A[2]~input_o\ & ((\resta|full_adder_2|COUT~1_combout\) # (\B[2]~input_o\ $ (\operacion[0]~input_o\)))) # (!\A[2]~input_o\ & (\resta|full_adder_2|COUT~1_combout\ & (\B[2]~input_o\ $ (\operacion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \resta|full_adder_2|COUT~1_combout\,
	datad => \operacion[0]~input_o\,
	combout => \resta|full_adder_3|COUT~0_combout\);

-- Location: LCCOMB_X32_Y11_N10
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux0~2_combout\ & (\operacion[0]~input_o\ $ (((\resta|full_adder_3|COUT~0_combout\))))) # (!\Mux0~2_combout\ & (((\suma|full_adder_3|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[0]~input_o\,
	datab => \suma|full_adder_3|COUT~0_combout\,
	datac => \resta|full_adder_3|COUT~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X33_Y10_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X32_Y12_N2
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\B[3]~input_o\ & ((\operacion[2]~input_o\ & ((\A[3]~input_o\) # (\Mux0~2_combout\))) # (!\operacion[2]~input_o\ & (!\A[3]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\Mux0~2_combout\) # (!\operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \operacion[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X32_Y12_N24
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\operacion[2]~input_o\ & (!\operacion[1]~input_o\ & ((\Mux3~1_combout\)))) # (!\operacion[2]~input_o\ & ((\Mux3~0_combout\ $ (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[1]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \operacion[2]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X32_Y12_N26
\S[3]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S[3]$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & (\Mux3~2_combout\)) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & ((\S[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datac => \S[3]$latch~combout\,
	datad => \Mux8~0clkctrl_outclk\,
	combout => \S[3]$latch~combout\);

-- Location: IOIBUF_X33_Y25_N8
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X32_Y11_N14
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\ & ((\operacion[2]~input_o\))) # (!\A[4]~input_o\ & ((\Mux0~2_combout\) # (!\operacion[2]~input_o\))))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\Mux0~2_combout\) # (!\operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \operacion[2]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X32_Y11_N6
\suma|full_adder_4|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|full_adder_4|COUT~0_combout\ = (\A[3]~input_o\ & ((\suma|full_adder_3|COUT~0_combout\) # (\operacion[1]~input_o\ $ (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\suma|full_adder_3|COUT~0_combout\ & (\operacion[1]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \suma|full_adder_3|COUT~0_combout\,
	combout => \suma|full_adder_4|COUT~0_combout\);

-- Location: LCCOMB_X32_Y11_N24
\resta|full_adder_4|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resta|full_adder_4|COUT~0_combout\ = (\A[3]~input_o\ & ((\resta|full_adder_3|COUT~0_combout\) # (\operacion[0]~input_o\ $ (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\resta|full_adder_3|COUT~0_combout\ & (\operacion[0]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \resta|full_adder_3|COUT~0_combout\,
	combout => \resta|full_adder_4|COUT~0_combout\);

-- Location: LCCOMB_X32_Y11_N20
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux0~2_combout\ & ((\resta|full_adder_4|COUT~0_combout\ $ (\operacion[0]~input_o\)))) # (!\Mux0~2_combout\ & (\suma|full_adder_4|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \suma|full_adder_4|COUT~0_combout\,
	datac => \resta|full_adder_4|COUT~0_combout\,
	datad => \operacion[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X32_Y11_N8
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\operacion[2]~input_o\ & (!\operacion[1]~input_o\ & (\Mux4~1_combout\))) # (!\operacion[2]~input_o\ & ((\Mux4~1_combout\ $ (\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[1]~input_o\,
	datab => \Mux4~1_combout\,
	datac => \Mux4~0_combout\,
	datad => \operacion[2]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X32_Y11_N16
\S[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S[4]$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux4~2_combout\))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\S[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[4]$latch~combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux8~0clkctrl_outclk\,
	combout => \S[4]$latch~combout\);

-- Location: IOIBUF_X29_Y0_N1
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X31_Y11_N2
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\B[5]~input_o\ & ((\operacion[2]~input_o\ & ((\Mux0~2_combout\) # (\A[5]~input_o\))) # (!\operacion[2]~input_o\ & ((!\A[5]~input_o\))))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\Mux0~2_combout\) # (!\operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \operacion[2]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X32_Y11_N4
\suma|full_adder_5|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|full_adder_5|COUT~0_combout\ = (\suma|full_adder_4|COUT~0_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\ $ (\operacion[1]~input_o\)))) # (!\suma|full_adder_4|COUT~0_combout\ & (\A[4]~input_o\ & (\B[4]~input_o\ $ (\operacion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \suma|full_adder_4|COUT~0_combout\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \operacion[1]~input_o\,
	combout => \suma|full_adder_5|COUT~0_combout\);

-- Location: LCCOMB_X32_Y11_N18
\resta|full_adder_5|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resta|full_adder_5|COUT~0_combout\ = (\A[4]~input_o\ & ((\resta|full_adder_4|COUT~0_combout\) # (\operacion[0]~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\resta|full_adder_4|COUT~0_combout\ & (\operacion[0]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[0]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \resta|full_adder_4|COUT~0_combout\,
	combout => \resta|full_adder_5|COUT~0_combout\);

-- Location: LCCOMB_X32_Y11_N26
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux0~2_combout\ & (\operacion[0]~input_o\ $ (((\resta|full_adder_5|COUT~0_combout\))))) # (!\Mux0~2_combout\ & (((\suma|full_adder_5|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[0]~input_o\,
	datab => \suma|full_adder_5|COUT~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \resta|full_adder_5|COUT~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X32_Y11_N28
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\operacion[2]~input_o\ & (!\operacion[1]~input_o\ & (\Mux5~1_combout\))) # (!\operacion[2]~input_o\ & ((\Mux5~1_combout\ $ (\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[1]~input_o\,
	datab => \Mux5~1_combout\,
	datac => \operacion[2]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X32_Y11_N22
\S[5]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S[5]$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & (\Mux5~2_combout\)) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & ((\S[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datac => \S[5]$latch~combout\,
	datad => \Mux8~0clkctrl_outclk\,
	combout => \S[5]$latch~combout\);

-- Location: IOIBUF_X33_Y25_N1
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X31_Y11_N12
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\A[6]~input_o\ & ((\operacion[2]~input_o\ & ((\Mux0~2_combout\) # (\B[6]~input_o\))) # (!\operacion[2]~input_o\ & ((!\B[6]~input_o\))))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\Mux0~2_combout\) # (!\operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \operacion[2]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \B[6]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X32_Y11_N2
\resta|full_adder_6|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resta|full_adder_6|COUT~0_combout\ = (\A[5]~input_o\ & ((\resta|full_adder_5|COUT~0_combout\) # (\operacion[0]~input_o\ $ (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\resta|full_adder_5|COUT~0_combout\ & (\operacion[0]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacion[0]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \resta|full_adder_5|COUT~0_combout\,
	combout => \resta|full_adder_6|COUT~0_combout\);

-- Location: LCCOMB_X31_Y11_N0
\suma|full_adder_6|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|full_adder_6|COUT~0_combout\ = (\suma|full_adder_5|COUT~0_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\ $ (\operacion[1]~input_o\)))) # (!\suma|full_adder_5|COUT~0_combout\ & (\A[5]~input_o\ & (\B[5]~input_o\ $ (\operacion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \operacion[1]~input_o\,
	datac => \suma|full_adder_5|COUT~0_combout\,
	datad => \A[5]~input_o\,
	combout => \suma|full_adder_6|COUT~0_combout\);

-- Location: LCCOMB_X31_Y11_N22
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~2_combout\ & (\resta|full_adder_6|COUT~0_combout\ $ ((\operacion[0]~input_o\)))) # (!\Mux0~2_combout\ & (((\suma|full_adder_6|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resta|full_adder_6|COUT~0_combout\,
	datab => \operacion[0]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \suma|full_adder_6|COUT~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X31_Y11_N14
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\operacion[2]~input_o\ & (\Mux6~1_combout\ & (!\operacion[1]~input_o\))) # (!\operacion[2]~input_o\ & (\Mux6~1_combout\ $ (((\Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \operacion[1]~input_o\,
	datac => \operacion[2]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X31_Y11_N4
\S[6]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S[6]$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux6~2_combout\))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\S[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[6]$latch~combout\,
	datac => \Mux8~0clkctrl_outclk\,
	datad => \Mux6~2_combout\,
	combout => \S[6]$latch~combout\);

-- Location: IOIBUF_X31_Y0_N1
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X31_Y11_N24
\suma|full_adder_7|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \suma|full_adder_7|COUT~0_combout\ = (\suma|full_adder_6|COUT~0_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\ $ (\operacion[1]~input_o\)))) # (!\suma|full_adder_6|COUT~0_combout\ & (\A[6]~input_o\ & (\B[6]~input_o\ $ (\operacion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \suma|full_adder_6|COUT~0_combout\,
	datac => \A[6]~input_o\,
	datad => \operacion[1]~input_o\,
	combout => \suma|full_adder_7|COUT~0_combout\);

-- Location: LCCOMB_X31_Y11_N26
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\operacion[2]~input_o\ & (\B[7]~input_o\ & (\A[7]~input_o\))) # (!\operacion[2]~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\ $ (\suma|full_adder_7|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \operacion[2]~input_o\,
	datac => \A[7]~input_o\,
	datad => \suma|full_adder_7|COUT~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X31_Y11_N16
\Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux0~2_combout\ & ((\operacion[2]~input_o\))) # (!\Mux0~2_combout\ & (\Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \operacion[2]~input_o\,
	datac => \Mux0~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X31_Y12_N16
\OROP|o[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OROP|o\(7) = (\B[7]~input_o\) # (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \OROP|o\(7));

-- Location: LCCOMB_X31_Y11_N20
\resta|full_adder_7|COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resta|full_adder_7|COUT~0_combout\ = (\A[6]~input_o\ & ((\resta|full_adder_6|COUT~0_combout\) # (\B[6]~input_o\ $ (\operacion[0]~input_o\)))) # (!\A[6]~input_o\ & (\resta|full_adder_6|COUT~0_combout\ & (\B[6]~input_o\ $ (\operacion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \operacion[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \resta|full_adder_6|COUT~0_combout\,
	combout => \resta|full_adder_7|COUT~0_combout\);

-- Location: LCCOMB_X31_Y11_N6
\resta|full_adder_8|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resta|full_adder_8|S~0_combout\ = \B[7]~input_o\ $ (\operacion[0]~input_o\ $ (\A[7]~input_o\ $ (\resta|full_adder_7|COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \operacion[0]~input_o\,
	datac => \A[7]~input_o\,
	datad => \resta|full_adder_7|COUT~0_combout\,
	combout => \resta|full_adder_8|S~0_combout\);

-- Location: LCCOMB_X31_Y11_N18
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux7~3_combout\ & (((\OROP|o\(7))) # (!\Mux0~2_combout\))) # (!\Mux7~3_combout\ & (\Mux0~2_combout\ & ((\resta|full_adder_8|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux0~2_combout\,
	datac => \OROP|o\(7),
	datad => \resta|full_adder_8|S~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X31_Y11_N28
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((!\operacion[2]~input_o\) # (!\operacion[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operacion[1]~input_o\,
	datac => \operacion[2]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X31_Y11_N30
\S[7]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S[7]$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((\Mux7~1_combout\))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\S[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[7]$latch~combout\,
	datac => \Mux8~0clkctrl_outclk\,
	datad => \Mux7~1_combout\,
	combout => \S[7]$latch~combout\);

-- Location: LCCOMB_X32_Y10_N22
\Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\B[4]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ $ (!\B[5]~input_o\)))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & (\A[5]~input_o\ $ (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X32_Y10_N28
\Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\A[7]~input_o\ & (\B[7]~input_o\ & (\A[6]~input_o\ $ (!\B[6]~input_o\)))) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & (\A[6]~input_o\ $ (!\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X32_Y10_N26
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\A[1]~input_o\ & (\B[1]~input_o\ & (\A[0]~input_o\ $ (!\B[0]~input_o\)))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & (\A[0]~input_o\ $ (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X32_Y10_N20
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\B[2]~input_o\ & (\A[2]~input_o\ & (\B[3]~input_o\ $ (!\A[3]~input_o\)))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & (\B[3]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X32_Y10_N2
\Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~2_combout\ & (\Mux9~3_combout\ & (\Mux9~0_combout\ & \Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X32_Y10_N4
\mayor|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mayor|LessThan0~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \mayor|LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y10_N6
\mayor|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mayor|LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & ((!\mayor|LessThan0~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\mayor|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \mayor|LessThan0~1_cout\,
	cout => \mayor|LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y10_N8
\mayor|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mayor|LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\mayor|LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\mayor|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \mayor|LessThan0~3_cout\,
	cout => \mayor|LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y10_N10
\mayor|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mayor|LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\mayor|LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\mayor|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \mayor|LessThan0~5_cout\,
	cout => \mayor|LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y10_N12
\mayor|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mayor|LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & ((!\mayor|LessThan0~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\mayor|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \mayor|LessThan0~7_cout\,
	cout => \mayor|LessThan0~9_cout\);

-- Location: LCCOMB_X32_Y10_N14
\mayor|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mayor|LessThan0~11_cout\ = CARRY((\A[5]~input_o\ & ((!\mayor|LessThan0~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\mayor|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \mayor|LessThan0~9_cout\,
	cout => \mayor|LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y10_N16
\mayor|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mayor|LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & ((!\mayor|LessThan0~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\mayor|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \mayor|LessThan0~11_cout\,
	cout => \mayor|LessThan0~13_cout\);

-- Location: LCCOMB_X32_Y10_N18
\mayor|LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mayor|LessThan0~14_combout\ = (\B[7]~input_o\ & ((\mayor|LessThan0~13_cout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (\mayor|LessThan0~13_cout\ & !\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \mayor|LessThan0~13_cout\,
	combout => \mayor|LessThan0~14_combout\);

-- Location: LCCOMB_X30_Y11_N28
\Mux9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\operacion[0]~input_o\ & ((\mayor|LessThan0~14_combout\))) # (!\operacion[0]~input_o\ & (\Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datac => \mayor|LessThan0~14_combout\,
	datad => \operacion[0]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X30_Y11_N14
\S_onebit$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S_onebit$latch~combout\ = (GLOBAL(\Mux8~0clkctrl_outclk\) & ((\S_onebit$latch~combout\))) # (!GLOBAL(\Mux8~0clkctrl_outclk\) & (\Mux9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datac => \S_onebit$latch~combout\,
	datad => \Mux8~0clkctrl_outclk\,
	combout => \S_onebit$latch~combout\);

-- Location: IOIBUF_X16_Y0_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S_onebit <= \S_onebit~output_o\;

ww_OVERFLOW <= \OVERFLOW~output_o\;
END structure;


