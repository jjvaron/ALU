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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "03/04/2019 18:19:04"

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

ENTITY 	multiplicador IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	product_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- product_out[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[13]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[14]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product_out[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_product_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \product[15]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan0~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \i[0]~32_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \LessThan0~11clkctrl_outclk\ : std_logic;
SIGNAL \product_out[0]~output_o\ : std_logic;
SIGNAL \product_out[1]~output_o\ : std_logic;
SIGNAL \product_out[2]~output_o\ : std_logic;
SIGNAL \product_out[3]~output_o\ : std_logic;
SIGNAL \product_out[4]~output_o\ : std_logic;
SIGNAL \product_out[5]~output_o\ : std_logic;
SIGNAL \product_out[6]~output_o\ : std_logic;
SIGNAL \product_out[7]~output_o\ : std_logic;
SIGNAL \product_out[8]~output_o\ : std_logic;
SIGNAL \product_out[9]~output_o\ : std_logic;
SIGNAL \product_out[10]~output_o\ : std_logic;
SIGNAL \product_out[11]~output_o\ : std_logic;
SIGNAL \product_out[12]~output_o\ : std_logic;
SIGNAL \product_out[13]~output_o\ : std_logic;
SIGNAL \product_out[14]~output_o\ : std_logic;
SIGNAL \product_out[15]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \i[1]~33_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \i[31]~34_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \j[0]~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \product[15]~0_combout\ : std_logic;
SIGNAL \product[15]~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL product : std_logic_vector(15 DOWNTO 0);
SIGNAL j : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
product_out <= ww_product_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\product[15]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \product[15]~0_combout\);

\LessThan0~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LessThan0~11_combout\);

-- Location: LCCOMB_X15_Y1_N18
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (j(1) & (\j[0]~0_combout\ $ (VCC))) # (!j(1) & (\j[0]~0_combout\ & VCC))
-- \Add1~1\ = CARRY((j(1) & \j[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => \j[0]~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X15_Y1_N20
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = \Add1~1\ $ (j(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => j(2),
	cin => \Add1~1\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X11_Y3_N2
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\i[0]~32_combout\ & (\i[1]~33_combout\ $ (VCC))) # (!\i[0]~32_combout\ & (\i[1]~33_combout\ & VCC))
-- \Add2~1\ = CARRY((\i[0]~32_combout\ & \i[1]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[0]~32_combout\,
	datab => \i[1]~33_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X11_Y3_N10
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~7\ & (\Add2~8_combout\ & (\LessThan0~11_combout\ & VCC))) # (!\Add2~7\ & ((((\Add2~8_combout\ & \LessThan0~11_combout\)))))
-- \Add2~9\ = CARRY((\Add2~8_combout\ & (\LessThan0~11_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X11_Y2_N0
\Add2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add2~29\ & (((!\LessThan0~11_combout\)) # (!\Add2~30_combout\))) # (!\Add2~29\ & (((\Add2~30_combout\ & \LessThan0~11_combout\)) # (GND)))
-- \Add2~31\ = CARRY(((!\Add2~29\) # (!\LessThan0~11_combout\)) # (!\Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X11_Y2_N2
\Add2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Add2~31\ & (\Add2~32_combout\ & (\LessThan0~11_combout\ & VCC))) # (!\Add2~31\ & ((((\Add2~32_combout\ & \LessThan0~11_combout\)))))
-- \Add2~33\ = CARRY((\Add2~32_combout\ & (\LessThan0~11_combout\ & !\Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X11_Y2_N4
\Add2~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Add2~33\ & (((!\LessThan0~11_combout\)) # (!\Add2~34_combout\))) # (!\Add2~33\ & (((\Add2~34_combout\ & \LessThan0~11_combout\)) # (GND)))
-- \Add2~35\ = CARRY(((!\Add2~33\) # (!\LessThan0~11_combout\)) # (!\Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X11_Y2_N6
\Add2~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\Add2~35\ & (\Add2~36_combout\ & (\LessThan0~11_combout\ & VCC))) # (!\Add2~35\ & ((((\Add2~36_combout\ & \LessThan0~11_combout\)))))
-- \Add2~37\ = CARRY((\Add2~36_combout\ & (\LessThan0~11_combout\ & !\Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~36_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X11_Y2_N8
\Add2~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Add2~37\ & (((!\LessThan0~11_combout\)) # (!\Add2~38_combout\))) # (!\Add2~37\ & (((\Add2~38_combout\ & \LessThan0~11_combout\)) # (GND)))
-- \Add2~39\ = CARRY(((!\Add2~37\) # (!\LessThan0~11_combout\)) # (!\Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X11_Y2_N26
\Add2~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\Add2~55\ & (\Add2~56_combout\ & (\LessThan0~11_combout\ & VCC))) # (!\Add2~55\ & ((((\Add2~56_combout\ & \LessThan0~11_combout\)))))
-- \Add2~57\ = CARRY((\Add2~56_combout\ & (\LessThan0~11_combout\ & !\Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X11_Y2_N28
\Add2~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\Add2~57\ & (((!\LessThan0~11_combout\)) # (!\Add2~58_combout\))) # (!\Add2~57\ & (((\Add2~58_combout\ & \LessThan0~11_combout\)) # (GND)))
-- \Add2~59\ = CARRY(((!\Add2~57\) # (!\LessThan0~11_combout\)) # (!\Add2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~58_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X11_Y3_N0
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add2~4_combout\ & ((\Add2~0_combout\) # ((\Add2~2_combout\) # (!\i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~2_combout\,
	datad => \i[0]~32_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y2_N24
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Add2~58_combout\) # ((\Add2~52_combout\) # ((\Add2~56_combout\) # (\Add2~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~58_combout\,
	datab => \Add2~52_combout\,
	datac => \Add2~56_combout\,
	datad => \Add2~54_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y2_N2
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\Add2~44_combout\) # ((\Add2~50_combout\) # ((\Add2~46_combout\) # (\Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \Add2~50_combout\,
	datac => \Add2~46_combout\,
	datad => \Add2~48_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y2_N8
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\Add2~40_combout\) # ((\Add2~42_combout\) # ((\Add2~36_combout\) # (\Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \Add2~42_combout\,
	datac => \Add2~36_combout\,
	datad => \Add2~38_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X12_Y2_N26
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~2_combout\) # ((\LessThan0~4_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y2_N12
\LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\Add2~32_combout\) # ((\Add2~34_combout\) # ((\Add2~30_combout\) # (\Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Add2~34_combout\,
	datac => \Add2~30_combout\,
	datad => \Add2~28_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X12_Y2_N10
\i[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i[0]~32_combout\ = (!\i[0]~32_combout\ & \LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[0]~32_combout\,
	datac => \LessThan0~11_combout\,
	combout => \i[0]~32_combout\);

-- Location: LCCOMB_X15_Y1_N12
\j[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- j(1) = (GLOBAL(\LessThan0~11clkctrl_outclk\) & (\Add1~0_combout\)) # (!GLOBAL(\LessThan0~11clkctrl_outclk\) & ((j(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \LessThan0~11clkctrl_outclk\,
	datad => j(1),
	combout => j(1));

-- Location: LCCOMB_X15_Y1_N10
\j[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- j(2) = (GLOBAL(\LessThan0~11clkctrl_outclk\) & (\Add1~2_combout\)) # (!GLOBAL(\LessThan0~11clkctrl_outclk\) & ((j(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datac => \LessThan0~11clkctrl_outclk\,
	datad => j(2),
	combout => j(2));

-- Location: IOIBUF_X33_Y24_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: CLKCTRL_G18
\LessThan0~11clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LessThan0~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LessThan0~11clkctrl_outclk\);

-- Location: IOOBUF_X26_Y31_N2
\product_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(0),
	devoe => ww_devoe,
	o => \product_out[0]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\product_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(1),
	devoe => ww_devoe,
	o => \product_out[1]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\product_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(2),
	devoe => ww_devoe,
	o => \product_out[2]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\product_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(3),
	devoe => ww_devoe,
	o => \product_out[3]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\product_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(4),
	devoe => ww_devoe,
	o => \product_out[4]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\product_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(5),
	devoe => ww_devoe,
	o => \product_out[5]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\product_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(6),
	devoe => ww_devoe,
	o => \product_out[6]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\product_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(7),
	devoe => ww_devoe,
	o => \product_out[7]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\product_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(8),
	devoe => ww_devoe,
	o => \product_out[8]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\product_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(9),
	devoe => ww_devoe,
	o => \product_out[9]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\product_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(10),
	devoe => ww_devoe,
	o => \product_out[10]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\product_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(11),
	devoe => ww_devoe,
	o => \product_out[11]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\product_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(12),
	devoe => ww_devoe,
	o => \product_out[12]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\product_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(13),
	devoe => ww_devoe,
	o => \product_out[13]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\product_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(14),
	devoe => ww_devoe,
	o => \product_out[14]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\product_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => product(15),
	devoe => ww_devoe,
	o => \product_out[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X31_Y27_N0
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (product(0) & (\A[0]~input_o\ $ (VCC))) # (!product(0) & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((product(0) & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(0),
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X12_Y0_N1
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X12_Y3_N26
\i[1]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i[1]~33_combout\ = (\Add2~0_combout\ & \LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \LessThan0~11_combout\,
	combout => \i[1]~33_combout\);

-- Location: LCCOMB_X11_Y3_N4
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add2~1\ & (((!\Add2~2_combout\)) # (!\LessThan0~11_combout\))) # (!\Add2~1\ & (((\LessThan0~11_combout\ & \Add2~2_combout\)) # (GND)))
-- \Add2~3\ = CARRY(((!\Add2~1\) # (!\Add2~2_combout\)) # (!\LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X11_Y3_N6
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add2~3\ & (\LessThan0~11_combout\ & (\Add2~4_combout\ & VCC))) # (!\Add2~3\ & ((((\LessThan0~11_combout\ & \Add2~4_combout\)))))
-- \Add2~5\ = CARRY((\LessThan0~11_combout\ & (\Add2~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X11_Y3_N8
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add2~5\ & (((!\LessThan0~11_combout\)) # (!\Add2~6_combout\))) # (!\Add2~5\ & (((\Add2~6_combout\ & \LessThan0~11_combout\)) # (GND)))
-- \Add2~7\ = CARRY(((!\Add2~5\) # (!\LessThan0~11_combout\)) # (!\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X11_Y3_N12
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add2~9\ & (((!\LessThan0~11_combout\)) # (!\Add2~10_combout\))) # (!\Add2~9\ & (((\Add2~10_combout\ & \LessThan0~11_combout\)) # (GND)))
-- \Add2~11\ = CARRY(((!\Add2~9\) # (!\LessThan0~11_combout\)) # (!\Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X11_Y3_N14
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add2~11\ & (\LessThan0~11_combout\ & (\Add2~12_combout\ & VCC))) # (!\Add2~11\ & ((((\LessThan0~11_combout\ & \Add2~12_combout\)))))
-- \Add2~13\ = CARRY((\LessThan0~11_combout\ & (\Add2~12_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X11_Y3_N16
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add2~13\ & (((!\LessThan0~11_combout\)) # (!\Add2~14_combout\))) # (!\Add2~13\ & (((\Add2~14_combout\ & \LessThan0~11_combout\)) # (GND)))
-- \Add2~15\ = CARRY(((!\Add2~13\) # (!\LessThan0~11_combout\)) # (!\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X11_Y3_N18
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Add2~15\ & (\Add2~16_combout\ & (\LessThan0~11_combout\ & VCC))) # (!\Add2~15\ & ((((\Add2~16_combout\ & \LessThan0~11_combout\)))))
-- \Add2~17\ = CARRY((\Add2~16_combout\ & (\LessThan0~11_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X11_Y3_N20
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add2~17\ & (((!\Add2~18_combout\)) # (!\LessThan0~11_combout\))) # (!\Add2~17\ & (((\LessThan0~11_combout\ & \Add2~18_combout\)) # (GND)))
-- \Add2~19\ = CARRY(((!\Add2~17\) # (!\Add2~18_combout\)) # (!\LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X11_Y3_N22
\Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Add2~19\ & (\LessThan0~11_combout\ & (\Add2~20_combout\ & VCC))) # (!\Add2~19\ & ((((\LessThan0~11_combout\ & \Add2~20_combout\)))))
-- \Add2~21\ = CARRY((\LessThan0~11_combout\ & (\Add2~20_combout\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X11_Y3_N24
\Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add2~21\ & (((!\LessThan0~11_combout\)) # (!\Add2~22_combout\))) # (!\Add2~21\ & (((\Add2~22_combout\ & \LessThan0~11_combout\)) # (GND)))
-- \Add2~23\ = CARRY(((!\Add2~21\) # (!\LessThan0~11_combout\)) # (!\Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X11_Y3_N26
\Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Add2~23\ & (\Add2~24_combout\ & (\LessThan0~11_combout\ & VCC))) # (!\Add2~23\ & ((((\Add2~24_combout\ & \LessThan0~11_combout\)))))
-- \Add2~25\ = CARRY((\Add2~24_combout\ & (\LessThan0~11_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \LessThan0~11_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X11_Y3_N28
\Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add2~25\ & (((!\Add2~26_combout\)) # (!\LessThan0~11_combout\))) # (!\Add2~25\ & (((\LessThan0~11_combout\ & \Add2~26_combout\)) # (GND)))
-- \Add2~27\ = CARRY(((!\Add2~25\) # (!\Add2~26_combout\)) # (!\LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~26_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X11_Y3_N30
\Add2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Add2~27\ & (\LessThan0~11_combout\ & (\Add2~28_combout\ & VCC))) # (!\Add2~27\ & ((((\LessThan0~11_combout\ & \Add2~28_combout\)))))
-- \Add2~29\ = CARRY((\LessThan0~11_combout\ & (\Add2~28_combout\ & !\Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~28_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X11_Y2_N10
\Add2~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\Add2~39\ & (\LessThan0~11_combout\ & (\Add2~40_combout\ & VCC))) # (!\Add2~39\ & ((((\LessThan0~11_combout\ & \Add2~40_combout\)))))
-- \Add2~41\ = CARRY((\LessThan0~11_combout\ & (\Add2~40_combout\ & !\Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~40_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X11_Y2_N12
\Add2~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Add2~41\ & (((!\Add2~42_combout\)) # (!\LessThan0~11_combout\))) # (!\Add2~41\ & (((\LessThan0~11_combout\ & \Add2~42_combout\)) # (GND)))
-- \Add2~43\ = CARRY(((!\Add2~41\) # (!\Add2~42_combout\)) # (!\LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~42_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X11_Y2_N14
\Add2~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\Add2~43\ & (\LessThan0~11_combout\ & (\Add2~44_combout\ & VCC))) # (!\Add2~43\ & ((((\LessThan0~11_combout\ & \Add2~44_combout\)))))
-- \Add2~45\ = CARRY((\LessThan0~11_combout\ & (\Add2~44_combout\ & !\Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~44_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X11_Y2_N16
\Add2~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\Add2~45\ & (((!\Add2~46_combout\)) # (!\LessThan0~11_combout\))) # (!\Add2~45\ & (((\LessThan0~11_combout\ & \Add2~46_combout\)) # (GND)))
-- \Add2~47\ = CARRY(((!\Add2~45\) # (!\Add2~46_combout\)) # (!\LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~46_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X11_Y2_N18
\Add2~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\Add2~47\ & (\LessThan0~11_combout\ & (\Add2~48_combout\ & VCC))) # (!\Add2~47\ & ((((\LessThan0~11_combout\ & \Add2~48_combout\)))))
-- \Add2~49\ = CARRY((\LessThan0~11_combout\ & (\Add2~48_combout\ & !\Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~48_combout\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X11_Y2_N20
\Add2~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\Add2~49\ & (((!\Add2~50_combout\)) # (!\LessThan0~11_combout\))) # (!\Add2~49\ & (((\LessThan0~11_combout\ & \Add2~50_combout\)) # (GND)))
-- \Add2~51\ = CARRY(((!\Add2~49\) # (!\Add2~50_combout\)) # (!\LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~50_combout\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X11_Y2_N22
\Add2~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\Add2~51\ & (\LessThan0~11_combout\ & (\Add2~52_combout\ & VCC))) # (!\Add2~51\ & ((((\LessThan0~11_combout\ & \Add2~52_combout\)))))
-- \Add2~53\ = CARRY((\LessThan0~11_combout\ & (\Add2~52_combout\ & !\Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~52_combout\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X11_Y2_N24
\Add2~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\Add2~53\ & (((!\Add2~54_combout\)) # (!\LessThan0~11_combout\))) # (!\Add2~53\ & (((\LessThan0~11_combout\ & \Add2~54_combout\)) # (GND)))
-- \Add2~55\ = CARRY(((!\Add2~53\) # (!\Add2~54_combout\)) # (!\LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~11_combout\,
	datab => \Add2~54_combout\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X11_Y2_N30
\Add2~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = \i[31]~34_combout\ $ (!\Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i[31]~34_combout\,
	cin => \Add2~59\,
	combout => \Add2~60_combout\);

-- Location: LCCOMB_X12_Y2_N20
\i[31]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i[31]~34_combout\ = (\Add2~60_combout\ & \LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~60_combout\,
	datac => \LessThan0~11_combout\,
	combout => \i[31]~34_combout\);

-- Location: LCCOMB_X12_Y3_N28
\LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\Add2~8_combout\) # ((\Add2~6_combout\) # (\Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~10_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X12_Y3_N30
\LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\Add2~12_combout\) # ((\Add2~18_combout\) # ((\Add2~14_combout\) # (\Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~16_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X12_Y3_N12
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\Add2~20_combout\) # ((\Add2~26_combout\) # ((\Add2~24_combout\) # (\Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~26_combout\,
	datac => \Add2~24_combout\,
	datad => \Add2~22_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X12_Y2_N6
\LessThan0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~6_combout\) # ((\LessThan0~9_combout\) # ((\LessThan0~8_combout\) # (\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X12_Y2_N4
\LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (\i[31]~34_combout\) # (((!\LessThan0~5_combout\ & !\LessThan0~10_combout\)) # (!\LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \i[31]~34_combout\,
	datac => \LessThan0~11_combout\,
	datad => \LessThan0~10_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X15_Y1_N0
\j[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \j[0]~0_combout\ = \LessThan0~11_combout\ $ (\j[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~11_combout\,
	datad => \j[0]~0_combout\,
	combout => \j[0]~0_combout\);

-- Location: LCCOMB_X15_Y1_N22
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (j(1) & (((\j[0]~0_combout\)))) # (!j(1) & ((\j[0]~0_combout\ & ((\B[5]~input_o\))) # (!\j[0]~0_combout\ & (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \j[0]~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X16_Y1_N24
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (j(1) & ((\Mux0~0_combout\ & ((\B[7]~input_o\))) # (!\Mux0~0_combout\ & (\B[6]~input_o\)))) # (!j(1) & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => \Mux0~0_combout\,
	datac => \B[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X20_Y0_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X15_Y1_N2
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (j(1) & (\j[0]~0_combout\)) # (!j(1) & ((\j[0]~0_combout\ & (\B[1]~input_o\)) # (!\j[0]~0_combout\ & ((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => \j[0]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X15_Y1_N6
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (j(1) & ((\Mux0~2_combout\ & (\B[3]~input_o\)) # (!\Mux0~2_combout\ & ((\B[2]~input_o\))))) # (!j(1) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X15_Y1_N4
\product[15]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \product[15]~0_combout\ = (\LessThan0~11_combout\ & ((j(2) & (\Mux0~1_combout\)) # (!j(2) & ((\Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datab => \Mux0~1_combout\,
	datac => \LessThan0~11_combout\,
	datad => \Mux0~3_combout\,
	combout => \product[15]~0_combout\);

-- Location: CLKCTRL_G16
\product[15]~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \product[15]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \product[15]~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y27_N16
\product[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(0) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~0_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => product(0),
	datac => \Add0~0_combout\,
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(0));

-- Location: LCCOMB_X31_Y27_N2
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A[1]~input_o\ & ((product(1) & (\Add0~1\ & VCC)) # (!product(1) & (!\Add0~1\)))) # (!\A[1]~input_o\ & ((product(1) & (!\Add0~1\)) # (!product(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A[1]~input_o\ & (!product(1) & !\Add0~1\)) # (!\A[1]~input_o\ & ((!\Add0~1\) # (!product(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => product(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y27_N6
\product[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(1) = (GLOBAL(\product[15]~0clkctrl_outclk\) & (\Add0~2_combout\)) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & ((product(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datac => \product[15]~0clkctrl_outclk\,
	datad => product(1),
	combout => product(1));

-- Location: IOIBUF_X33_Y24_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X31_Y27_N4
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((product(2) $ (\A[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((product(2) & ((\A[2]~input_o\) # (!\Add0~3\))) # (!product(2) & (\A[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => product(2),
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X30_Y27_N12
\product[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(2) = (GLOBAL(\product[15]~0clkctrl_outclk\) & (\Add0~4_combout\)) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & ((product(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \product[15]~0clkctrl_outclk\,
	datad => product(2),
	combout => product(2));

-- Location: LCCOMB_X31_Y27_N6
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A[3]~input_o\ & ((product(3) & (\Add0~5\ & VCC)) # (!product(3) & (!\Add0~5\)))) # (!\A[3]~input_o\ & ((product(3) & (!\Add0~5\)) # (!product(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\A[3]~input_o\ & (!product(3) & !\Add0~5\)) # (!\A[3]~input_o\ & ((!\Add0~5\) # (!product(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => product(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X32_Y27_N28
\product[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(3) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~6_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => product(3),
	datac => \Add0~6_combout\,
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(3));

-- Location: LCCOMB_X31_Y27_N8
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\A[4]~input_o\ $ (product(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\A[4]~input_o\ & ((product(4)) # (!\Add0~7\))) # (!\A[4]~input_o\ & (product(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => product(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X32_Y27_N22
\product[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(4) = (GLOBAL(\product[15]~0clkctrl_outclk\) & (\Add0~8_combout\)) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & ((product(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => product(4),
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(4));

-- Location: IOIBUF_X31_Y31_N1
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X31_Y27_N10
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (product(5) & ((\A[5]~input_o\ & (\Add0~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add0~9\)))) # (!product(5) & ((\A[5]~input_o\ & (!\Add0~9\)) # (!\A[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((product(5) & (!\A[5]~input_o\ & !\Add0~9\)) # (!product(5) & ((!\Add0~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => product(5),
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y27_N4
\product[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(5) = (GLOBAL(\product[15]~0clkctrl_outclk\) & (\Add0~10_combout\)) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & ((product(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datac => product(5),
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(5));

-- Location: LCCOMB_X31_Y27_N12
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[6]~input_o\ $ (product(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A[6]~input_o\ & ((product(6)) # (!\Add0~11\))) # (!\A[6]~input_o\ & (product(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => product(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X30_Y27_N18
\product[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(6) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~12_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => product(6),
	datac => \Add0~12_combout\,
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(6));

-- Location: IOIBUF_X33_Y15_N8
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X31_Y27_N14
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (product(7) & ((\A[7]~input_o\ & (\Add0~13\ & VCC)) # (!\A[7]~input_o\ & (!\Add0~13\)))) # (!product(7) & ((\A[7]~input_o\ & (!\Add0~13\)) # (!\A[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((product(7) & (!\A[7]~input_o\ & !\Add0~13\)) # (!product(7) & ((!\Add0~13\) # (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => product(7),
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X32_Y27_N30
\product[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(7) = (GLOBAL(\product[15]~0clkctrl_outclk\) & (\Add0~14_combout\)) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & ((product(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datac => product(7),
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(7));

-- Location: LCCOMB_X31_Y27_N16
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (product(8) & (\Add0~15\ $ (GND))) # (!product(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((product(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => product(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X32_Y27_N24
\product[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(8) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~16_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => product(8),
	datac => \Add0~16_combout\,
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(8));

-- Location: LCCOMB_X31_Y27_N18
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (product(9) & (!\Add0~17\)) # (!product(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!product(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => product(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X30_Y27_N28
\product[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(9) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~18_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => product(9),
	datac => \product[15]~0clkctrl_outclk\,
	datad => \Add0~18_combout\,
	combout => product(9));

-- Location: LCCOMB_X31_Y27_N20
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (product(10) & (\Add0~19\ $ (GND))) # (!product(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((product(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => product(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X30_Y27_N10
\product[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(10) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~20_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(10),
	datac => \Add0~20_combout\,
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(10));

-- Location: LCCOMB_X31_Y27_N22
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (product(11) & (!\Add0~21\)) # (!product(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!product(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => product(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X30_Y27_N4
\product[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(11) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~22_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => product(11),
	datac => \product[15]~0clkctrl_outclk\,
	datad => \Add0~22_combout\,
	combout => product(11));

-- Location: LCCOMB_X31_Y27_N24
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (product(12) & (\Add0~23\ $ (GND))) # (!product(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((product(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => product(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X30_Y27_N30
\product[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(12) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~24_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(12),
	datac => \product[15]~0clkctrl_outclk\,
	datad => \Add0~24_combout\,
	combout => product(12));

-- Location: LCCOMB_X31_Y27_N26
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (product(13) & (!\Add0~25\)) # (!product(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!product(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => product(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X32_Y27_N26
\product[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(13) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~26_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product(13),
	datac => \Add0~26_combout\,
	datad => \product[15]~0clkctrl_outclk\,
	combout => product(13));

-- Location: LCCOMB_X31_Y27_N28
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (product(14) & (\Add0~27\ $ (GND))) # (!product(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((product(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => product(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X30_Y27_N8
\product[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(14) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~28_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => product(14),
	datac => \product[15]~0clkctrl_outclk\,
	datad => \Add0~28_combout\,
	combout => product(14));

-- Location: LCCOMB_X31_Y27_N30
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \Add0~29\ $ (product(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => product(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X32_Y27_N8
\product[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- product(15) = (GLOBAL(\product[15]~0clkctrl_outclk\) & ((\Add0~30_combout\))) # (!GLOBAL(\product[15]~0clkctrl_outclk\) & (product(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => product(15),
	datac => \product[15]~0clkctrl_outclk\,
	datad => \Add0~30_combout\,
	combout => product(15));

ww_product_out(0) <= \product_out[0]~output_o\;

ww_product_out(1) <= \product_out[1]~output_o\;

ww_product_out(2) <= \product_out[2]~output_o\;

ww_product_out(3) <= \product_out[3]~output_o\;

ww_product_out(4) <= \product_out[4]~output_o\;

ww_product_out(5) <= \product_out[5]~output_o\;

ww_product_out(6) <= \product_out[6]~output_o\;

ww_product_out(7) <= \product_out[7]~output_o\;

ww_product_out(8) <= \product_out[8]~output_o\;

ww_product_out(9) <= \product_out[9]~output_o\;

ww_product_out(10) <= \product_out[10]~output_o\;

ww_product_out(11) <= \product_out[11]~output_o\;

ww_product_out(12) <= \product_out[12]~output_o\;

ww_product_out(13) <= \product_out[13]~output_o\;

ww_product_out(14) <= \product_out[14]~output_o\;

ww_product_out(15) <= \product_out[15]~output_o\;
END structure;


