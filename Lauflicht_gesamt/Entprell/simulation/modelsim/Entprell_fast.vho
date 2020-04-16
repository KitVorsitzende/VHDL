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

-- DATE "06/16/2019 17:35:24"

-- 
-- Device: Altera EP2C70F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Entprell IS
    PORT (
	clk : IN std_logic;
	button : IN std_logic;
	PB : OUT std_logic
	);
END Entprell;

-- Design Ports Information
-- PB	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Entprell IS
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
SIGNAL ww_button : std_logic;
SIGNAL ww_PB : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tmp[15]~25_combout\ : std_logic;
SIGNAL \tmp[13]~29_combout\ : std_logic;
SIGNAL \tmp[4]~48\ : std_logic;
SIGNAL \tmp[3]~49_combout\ : std_logic;
SIGNAL \tmp[3]~50\ : std_logic;
SIGNAL \tmp[2]~51_combout\ : std_logic;
SIGNAL \tmp[2]~52\ : std_logic;
SIGNAL \tmp[1]~53_combout\ : std_logic;
SIGNAL \tmp[1]~54\ : std_logic;
SIGNAL \tmp[0]~55_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \tmp[19]~57_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \tmp[18]~19_combout\ : std_logic;
SIGNAL \button~combout\ : std_logic;
SIGNAL \button~clkctrl_outclk\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \tmp[18]~20\ : std_logic;
SIGNAL \tmp[17]~22\ : std_logic;
SIGNAL \tmp[16]~23_combout\ : std_logic;
SIGNAL \tmp[16]~24\ : std_logic;
SIGNAL \tmp[15]~26\ : std_logic;
SIGNAL \tmp[14]~27_combout\ : std_logic;
SIGNAL \tmp[14]~28\ : std_logic;
SIGNAL \tmp[13]~30\ : std_logic;
SIGNAL \tmp[12]~31_combout\ : std_logic;
SIGNAL \tmp[12]~32\ : std_logic;
SIGNAL \tmp[11]~33_combout\ : std_logic;
SIGNAL \tmp[11]~34\ : std_logic;
SIGNAL \tmp[10]~35_combout\ : std_logic;
SIGNAL \tmp[10]~36\ : std_logic;
SIGNAL \tmp[9]~37_combout\ : std_logic;
SIGNAL \tmp[9]~38\ : std_logic;
SIGNAL \tmp[8]~39_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \tmp[17]~21_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \tmp[8]~40\ : std_logic;
SIGNAL \tmp[7]~41_combout\ : std_logic;
SIGNAL \tmp[7]~42\ : std_logic;
SIGNAL \tmp[6]~43_combout\ : std_logic;
SIGNAL \tmp[6]~44\ : std_logic;
SIGNAL \tmp[5]~45_combout\ : std_logic;
SIGNAL \tmp[5]~46\ : std_logic;
SIGNAL \tmp[4]~47_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \PB~0_combout\ : std_logic;
SIGNAL \PB~reg0_regout\ : std_logic;
SIGNAL tmp : std_logic_vector(0 TO 19);
SIGNAL \ALT_INV_PB~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_button <= button;
PB <= ww_PB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\button~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \button~combout\);
\ALT_INV_PB~reg0_regout\ <= NOT \PB~reg0_regout\;

-- Location: LCFF_X1_Y12_N13
\tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[3]~49_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(3));

-- Location: LCFF_X1_Y12_N15
\tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[2]~51_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(2));

-- Location: LCFF_X1_Y12_N17
\tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[1]~53_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(1));

-- Location: LCFF_X1_Y12_N19
\tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[0]~55_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(0));

-- Location: LCFF_X1_Y13_N21
\tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[15]~25_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(15));

-- Location: LCFF_X1_Y13_N25
\tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[13]~29_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(13));

-- Location: LCCOMB_X1_Y13_N20
\tmp[15]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[15]~25_combout\ = (tmp(15) & (!\tmp[16]~24\)) # (!tmp(15) & ((\tmp[16]~24\) # (GND)))
-- \tmp[15]~26\ = CARRY((!\tmp[16]~24\) # (!tmp(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmp(15),
	datad => VCC,
	cin => \tmp[16]~24\,
	combout => \tmp[15]~25_combout\,
	cout => \tmp[15]~26\);

-- Location: LCCOMB_X1_Y13_N24
\tmp[13]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[13]~29_combout\ = (tmp(13) & (!\tmp[14]~28\)) # (!tmp(13) & ((\tmp[14]~28\) # (GND)))
-- \tmp[13]~30\ = CARRY((!\tmp[14]~28\) # (!tmp(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmp(13),
	datad => VCC,
	cin => \tmp[14]~28\,
	combout => \tmp[13]~29_combout\,
	cout => \tmp[13]~30\);

-- Location: LCCOMB_X1_Y12_N10
\tmp[4]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[4]~47_combout\ = (tmp(4) & (\tmp[5]~46\ $ (GND))) # (!tmp(4) & (!\tmp[5]~46\ & VCC))
-- \tmp[4]~48\ = CARRY((tmp(4) & !\tmp[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(4),
	datad => VCC,
	cin => \tmp[5]~46\,
	combout => \tmp[4]~47_combout\,
	cout => \tmp[4]~48\);

-- Location: LCCOMB_X1_Y12_N12
\tmp[3]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[3]~49_combout\ = (tmp(3) & (!\tmp[4]~48\)) # (!tmp(3) & ((\tmp[4]~48\) # (GND)))
-- \tmp[3]~50\ = CARRY((!\tmp[4]~48\) # (!tmp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmp(3),
	datad => VCC,
	cin => \tmp[4]~48\,
	combout => \tmp[3]~49_combout\,
	cout => \tmp[3]~50\);

-- Location: LCCOMB_X1_Y12_N14
\tmp[2]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[2]~51_combout\ = (tmp(2) & (\tmp[3]~50\ $ (GND))) # (!tmp(2) & (!\tmp[3]~50\ & VCC))
-- \tmp[2]~52\ = CARRY((tmp(2) & !\tmp[3]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(2),
	datad => VCC,
	cin => \tmp[3]~50\,
	combout => \tmp[2]~51_combout\,
	cout => \tmp[2]~52\);

-- Location: LCCOMB_X1_Y12_N16
\tmp[1]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[1]~53_combout\ = (tmp(1) & (!\tmp[2]~52\)) # (!tmp(1) & ((\tmp[2]~52\) # (GND)))
-- \tmp[1]~54\ = CARRY((!\tmp[2]~52\) # (!tmp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmp(1),
	datad => VCC,
	cin => \tmp[2]~52\,
	combout => \tmp[1]~53_combout\,
	cout => \tmp[1]~54\);

-- Location: LCCOMB_X1_Y12_N18
\tmp[0]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[0]~55_combout\ = \tmp[1]~54\ $ (!tmp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tmp(0),
	cin => \tmp[1]~54\,
	combout => \tmp[0]~55_combout\);

-- Location: LCCOMB_X1_Y12_N20
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (tmp(1) & (tmp(0) & (tmp(2) & tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(1),
	datab => tmp(0),
	datac => tmp(2),
	datad => tmp(3),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X1_Y13_N7
\tmp[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[19]~57_combout\,
	aclr => \button~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(19));

-- Location: LCCOMB_X1_Y13_N10
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (tmp(15) & (tmp(14) & (tmp(13) & tmp(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(15),
	datab => tmp(14),
	datac => tmp(13),
	datad => tmp(12),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y13_N6
\tmp[19]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[19]~57_combout\ = ((\Equal0~0_combout\ & \Equal0~5_combout\)) # (!tmp(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => tmp(19),
	datad => \Equal0~5_combout\,
	combout => \tmp[19]~57_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y13_N14
\tmp[18]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[18]~19_combout\ = (tmp(19) & (tmp(18) $ (VCC))) # (!tmp(19) & (tmp(18) & VCC))
-- \tmp[18]~20\ = CARRY((tmp(19) & tmp(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(19),
	datab => tmp(18),
	datad => VCC,
	combout => \tmp[18]~19_combout\,
	cout => \tmp[18]~20\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_button,
	combout => \button~combout\);

-- Location: CLKCTRL_G1
\button~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \button~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \button~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y13_N12
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Equal0~5_combout\) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCFF_X1_Y13_N15
\tmp[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[18]~19_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(18));

-- Location: LCCOMB_X1_Y13_N16
\tmp[17]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[17]~21_combout\ = (tmp(17) & (!\tmp[18]~20\)) # (!tmp(17) & ((\tmp[18]~20\) # (GND)))
-- \tmp[17]~22\ = CARRY((!\tmp[18]~20\) # (!tmp(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmp(17),
	datad => VCC,
	cin => \tmp[18]~20\,
	combout => \tmp[17]~21_combout\,
	cout => \tmp[17]~22\);

-- Location: LCCOMB_X1_Y13_N18
\tmp[16]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[16]~23_combout\ = (tmp(16) & (\tmp[17]~22\ $ (GND))) # (!tmp(16) & (!\tmp[17]~22\ & VCC))
-- \tmp[16]~24\ = CARRY((tmp(16) & !\tmp[17]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(16),
	datad => VCC,
	cin => \tmp[17]~22\,
	combout => \tmp[16]~23_combout\,
	cout => \tmp[16]~24\);

-- Location: LCFF_X1_Y13_N19
\tmp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[16]~23_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(16));

-- Location: LCCOMB_X1_Y13_N22
\tmp[14]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[14]~27_combout\ = (tmp(14) & (\tmp[15]~26\ $ (GND))) # (!tmp(14) & (!\tmp[15]~26\ & VCC))
-- \tmp[14]~28\ = CARRY((tmp(14) & !\tmp[15]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(14),
	datad => VCC,
	cin => \tmp[15]~26\,
	combout => \tmp[14]~27_combout\,
	cout => \tmp[14]~28\);

-- Location: LCFF_X1_Y13_N23
\tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[14]~27_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(14));

-- Location: LCCOMB_X1_Y13_N26
\tmp[12]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[12]~31_combout\ = (tmp(12) & (\tmp[13]~30\ $ (GND))) # (!tmp(12) & (!\tmp[13]~30\ & VCC))
-- \tmp[12]~32\ = CARRY((tmp(12) & !\tmp[13]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(12),
	datad => VCC,
	cin => \tmp[13]~30\,
	combout => \tmp[12]~31_combout\,
	cout => \tmp[12]~32\);

-- Location: LCFF_X1_Y13_N27
\tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[12]~31_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(12));

-- Location: LCCOMB_X1_Y13_N28
\tmp[11]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[11]~33_combout\ = (tmp(11) & (!\tmp[12]~32\)) # (!tmp(11) & ((\tmp[12]~32\) # (GND)))
-- \tmp[11]~34\ = CARRY((!\tmp[12]~32\) # (!tmp(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(11),
	datad => VCC,
	cin => \tmp[12]~32\,
	combout => \tmp[11]~33_combout\,
	cout => \tmp[11]~34\);

-- Location: LCFF_X1_Y13_N29
\tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[11]~33_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(11));

-- Location: LCCOMB_X1_Y13_N30
\tmp[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[10]~35_combout\ = (tmp(10) & (\tmp[11]~34\ $ (GND))) # (!tmp(10) & (!\tmp[11]~34\ & VCC))
-- \tmp[10]~36\ = CARRY((tmp(10) & !\tmp[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(10),
	datad => VCC,
	cin => \tmp[11]~34\,
	combout => \tmp[10]~35_combout\,
	cout => \tmp[10]~36\);

-- Location: LCFF_X1_Y13_N31
\tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[10]~35_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(10));

-- Location: LCCOMB_X1_Y12_N0
\tmp[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[9]~37_combout\ = (tmp(9) & (!\tmp[10]~36\)) # (!tmp(9) & ((\tmp[10]~36\) # (GND)))
-- \tmp[9]~38\ = CARRY((!\tmp[10]~36\) # (!tmp(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(9),
	datad => VCC,
	cin => \tmp[10]~36\,
	combout => \tmp[9]~37_combout\,
	cout => \tmp[9]~38\);

-- Location: LCFF_X1_Y13_N13
\tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tmp[9]~37_combout\,
	aclr => \button~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(9));

-- Location: LCCOMB_X1_Y12_N2
\tmp[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[8]~39_combout\ = (tmp(8) & (\tmp[9]~38\ $ (GND))) # (!tmp(8) & (!\tmp[9]~38\ & VCC))
-- \tmp[8]~40\ = CARRY((tmp(8) & !\tmp[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(8),
	datad => VCC,
	cin => \tmp[9]~38\,
	combout => \tmp[8]~39_combout\,
	cout => \tmp[8]~40\);

-- Location: LCFF_X1_Y13_N3
\tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \tmp[8]~39_combout\,
	aclr => \button~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(8));

-- Location: LCCOMB_X1_Y13_N2
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (tmp(9) & (tmp(10) & (tmp(8) & tmp(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(9),
	datab => tmp(10),
	datac => tmp(8),
	datad => tmp(11),
	combout => \Equal0~3_combout\);

-- Location: LCFF_X1_Y13_N17
\tmp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[17]~21_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(17));

-- Location: LCCOMB_X1_Y13_N4
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (tmp(19) & (tmp(18) & (tmp(17) & tmp(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(19),
	datab => tmp(18),
	datac => tmp(17),
	datad => tmp(16),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y12_N4
\tmp[7]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[7]~41_combout\ = (tmp(7) & (!\tmp[8]~40\)) # (!tmp(7) & ((\tmp[8]~40\) # (GND)))
-- \tmp[7]~42\ = CARRY((!\tmp[8]~40\) # (!tmp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(7),
	datad => VCC,
	cin => \tmp[8]~40\,
	combout => \tmp[7]~41_combout\,
	cout => \tmp[7]~42\);

-- Location: LCFF_X1_Y12_N5
\tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[7]~41_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(7));

-- Location: LCCOMB_X1_Y12_N6
\tmp[6]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[6]~43_combout\ = (tmp(6) & (\tmp[7]~42\ $ (GND))) # (!tmp(6) & (!\tmp[7]~42\ & VCC))
-- \tmp[6]~44\ = CARRY((tmp(6) & !\tmp[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmp(6),
	datad => VCC,
	cin => \tmp[7]~42\,
	combout => \tmp[6]~43_combout\,
	cout => \tmp[6]~44\);

-- Location: LCFF_X1_Y12_N7
\tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[6]~43_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(6));

-- Location: LCCOMB_X1_Y12_N8
\tmp[5]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[5]~45_combout\ = (tmp(5) & (!\tmp[6]~44\)) # (!tmp(5) & ((\tmp[6]~44\) # (GND)))
-- \tmp[5]~46\ = CARRY((!\tmp[6]~44\) # (!tmp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmp(5),
	datad => VCC,
	cin => \tmp[6]~44\,
	combout => \tmp[5]~45_combout\,
	cout => \tmp[5]~46\);

-- Location: LCFF_X1_Y12_N9
\tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[5]~45_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(5));

-- Location: LCFF_X1_Y12_N11
\tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \tmp[4]~47_combout\,
	aclr => \button~clkctrl_outclk\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(4));

-- Location: LCCOMB_X1_Y12_N22
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (tmp(6) & (tmp(7) & (tmp(5) & tmp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(6),
	datab => tmp(7),
	datac => tmp(5),
	datad => tmp(4),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y13_N0
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X1_Y13_N8
\PB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB~0_combout\ = (\PB~reg0_regout\) # ((\Equal0~0_combout\ & \Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \PB~reg0_regout\,
	datad => \Equal0~5_combout\,
	combout => \PB~0_combout\);

-- Location: LCFF_X1_Y13_N9
\PB~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PB~0_combout\,
	aclr => \button~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB~reg0_regout\);

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_PB~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PB);
END structure;


