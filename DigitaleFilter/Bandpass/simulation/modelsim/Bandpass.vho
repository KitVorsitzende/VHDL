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

-- DATE "06/30/2019 22:49:46"

-- 
-- Device: Altera EP2C70F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Bandpass IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	x_input : IN IEEE.NUMERIC_STD.signed(13 DOWNTO 0);
	y_output : OUT IEEE.NUMERIC_STD.signed(13 DOWNTO 0)
	);
END Bandpass;

-- Design Ports Information
-- rst	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[13]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y_output[0]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[2]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[3]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[5]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[7]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[8]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[9]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[10]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[11]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[12]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[13]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[0]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[1]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[3]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[4]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[5]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[6]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[7]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[8]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[9]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[10]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[11]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[12]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Bandpass IS
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
SIGNAL ww_x_input : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_y_output : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dff1|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \dff0|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \dff0|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \dff0|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \y_output[1]~13_combout\ : std_logic;
SIGNAL \y_output[1]~reg0_regout\ : std_logic;
SIGNAL \y_output[1]~14\ : std_logic;
SIGNAL \y_output[2]~15_combout\ : std_logic;
SIGNAL \y_output[2]~reg0_regout\ : std_logic;
SIGNAL \dff0|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \y_output[2]~16\ : std_logic;
SIGNAL \y_output[3]~17_combout\ : std_logic;
SIGNAL \y_output[3]~reg0_regout\ : std_logic;
SIGNAL \dff0|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \y_output[3]~18\ : std_logic;
SIGNAL \y_output[4]~19_combout\ : std_logic;
SIGNAL \y_output[4]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \y_output[4]~20\ : std_logic;
SIGNAL \y_output[5]~21_combout\ : std_logic;
SIGNAL \y_output[5]~reg0_regout\ : std_logic;
SIGNAL \dff0|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \y_output[5]~22\ : std_logic;
SIGNAL \y_output[6]~23_combout\ : std_logic;
SIGNAL \y_output[6]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \y_output[6]~24\ : std_logic;
SIGNAL \y_output[7]~25_combout\ : std_logic;
SIGNAL \y_output[7]~reg0_regout\ : std_logic;
SIGNAL \y_output[7]~26\ : std_logic;
SIGNAL \y_output[8]~27_combout\ : std_logic;
SIGNAL \y_output[8]~reg0_regout\ : std_logic;
SIGNAL \dff0|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \y_output[8]~28\ : std_logic;
SIGNAL \y_output[9]~29_combout\ : std_logic;
SIGNAL \y_output[9]~reg0_regout\ : std_logic;
SIGNAL \y_output[9]~30\ : std_logic;
SIGNAL \y_output[10]~31_combout\ : std_logic;
SIGNAL \y_output[10]~reg0_regout\ : std_logic;
SIGNAL \y_output[10]~32\ : std_logic;
SIGNAL \y_output[11]~33_combout\ : std_logic;
SIGNAL \y_output[11]~reg0_regout\ : std_logic;
SIGNAL \dff0|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \y_output[11]~34\ : std_logic;
SIGNAL \y_output[12]~35_combout\ : std_logic;
SIGNAL \y_output[12]~reg0_regout\ : std_logic;
SIGNAL \dff0|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[12]~feeder_combout\ : std_logic;
SIGNAL \y_output[12]~36\ : std_logic;
SIGNAL \y_output[13]~37_combout\ : std_logic;
SIGNAL \y_output[13]~reg0_regout\ : std_logic;
SIGNAL \x_input~combout\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \dff1|tmp\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \dff0|tmp\ : std_logic_vector(13 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_x_input <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(x_input);
y_output <= IEEE.NUMERIC_STD.SIGNED(ww_y_output);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X3_Y37_N31
\dff1|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(7));

-- Location: LCFF_X3_Y37_N9
\dff1|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(9));

-- Location: LCFF_X3_Y37_N15
\dff1|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dff0|tmp\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(10));

-- Location: LCFF_X3_Y37_N1
\dff0|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(7));

-- Location: LCFF_X3_Y37_N11
\dff0|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x_input~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(9));

-- Location: LCFF_X3_Y37_N21
\dff0|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(10));

-- Location: LCCOMB_X3_Y37_N30
\dff1|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[7]~feeder_combout\ = \dff0|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(7),
	combout => \dff1|tmp[7]~feeder_combout\);

-- Location: LCCOMB_X3_Y37_N8
\dff1|tmp[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[9]~feeder_combout\ = \dff0|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(9),
	combout => \dff1|tmp[9]~feeder_combout\);

-- Location: LCCOMB_X3_Y37_N0
\dff0|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[7]~feeder_combout\ = \x_input~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(7),
	combout => \dff0|tmp[7]~feeder_combout\);

-- Location: LCCOMB_X3_Y37_N20
\dff0|tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[10]~feeder_combout\ = \x_input~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(10),
	combout => \dff0|tmp[10]~feeder_combout\);

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

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[0]~I\ : cycloneii_io
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
	padio => ww_x_input(0),
	combout => \x_input~combout\(0));

-- Location: LCCOMB_X3_Y37_N6
\dff0|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[0]~feeder_combout\ = \x_input~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(0),
	combout => \dff0|tmp[0]~feeder_combout\);

-- Location: LCFF_X3_Y37_N7
\dff0|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(0));

-- Location: LCFF_X4_Y37_N29
\dff1|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dff0|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(0));

-- Location: LCCOMB_X4_Y37_N2
\y_output[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[1]~13_combout\ = (\x_input~combout\(0) & (\dff1|tmp\(0) $ (VCC))) # (!\x_input~combout\(0) & ((\dff1|tmp\(0)) # (GND)))
-- \y_output[1]~14\ = CARRY((\dff1|tmp\(0)) # (!\x_input~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(0),
	datab => \dff1|tmp\(0),
	datad => VCC,
	combout => \y_output[1]~13_combout\,
	cout => \y_output[1]~14\);

-- Location: LCFF_X4_Y37_N3
\y_output[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[1]~reg0_regout\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[1]~I\ : cycloneii_io
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
	padio => ww_x_input(1),
	combout => \x_input~combout\(1));

-- Location: LCFF_X3_Y37_N5
\dff0|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x_input~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(1));

-- Location: LCFF_X4_Y37_N1
\dff1|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dff0|tmp\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(1));

-- Location: LCCOMB_X4_Y37_N4
\y_output[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[2]~15_combout\ = (\x_input~combout\(1) & ((\dff1|tmp\(1) & (!\y_output[1]~14\)) # (!\dff1|tmp\(1) & ((\y_output[1]~14\) # (GND))))) # (!\x_input~combout\(1) & ((\dff1|tmp\(1) & (\y_output[1]~14\ & VCC)) # (!\dff1|tmp\(1) & (!\y_output[1]~14\))))
-- \y_output[2]~16\ = CARRY((\x_input~combout\(1) & ((!\y_output[1]~14\) # (!\dff1|tmp\(1)))) # (!\x_input~combout\(1) & (!\dff1|tmp\(1) & !\y_output[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(1),
	datab => \dff1|tmp\(1),
	datad => VCC,
	cin => \y_output[1]~14\,
	combout => \y_output[2]~15_combout\,
	cout => \y_output[2]~16\);

-- Location: LCFF_X4_Y37_N5
\y_output[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[2]~reg0_regout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[2]~I\ : cycloneii_io
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
	padio => ww_x_input(2),
	combout => \x_input~combout\(2));

-- Location: LCCOMB_X3_Y37_N18
\dff0|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[2]~feeder_combout\ = \x_input~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(2),
	combout => \dff0|tmp[2]~feeder_combout\);

-- Location: LCFF_X3_Y37_N19
\dff0|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(2));

-- Location: LCCOMB_X4_Y37_N30
\dff1|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[2]~feeder_combout\ = \dff0|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(2),
	combout => \dff1|tmp[2]~feeder_combout\);

-- Location: LCFF_X4_Y37_N31
\dff1|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(2));

-- Location: LCCOMB_X4_Y37_N6
\y_output[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[3]~17_combout\ = ((\x_input~combout\(2) $ (\dff1|tmp\(2) $ (\y_output[2]~16\)))) # (GND)
-- \y_output[3]~18\ = CARRY((\x_input~combout\(2) & (\dff1|tmp\(2) & !\y_output[2]~16\)) # (!\x_input~combout\(2) & ((\dff1|tmp\(2)) # (!\y_output[2]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(2),
	datab => \dff1|tmp\(2),
	datad => VCC,
	cin => \y_output[2]~16\,
	combout => \y_output[3]~17_combout\,
	cout => \y_output[3]~18\);

-- Location: LCFF_X4_Y37_N7
\y_output[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[3]~reg0_regout\);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[3]~I\ : cycloneii_io
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
	padio => ww_x_input(3),
	combout => \x_input~combout\(3));

-- Location: LCCOMB_X2_Y37_N16
\dff0|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[3]~feeder_combout\ = \x_input~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(3),
	combout => \dff0|tmp[3]~feeder_combout\);

-- Location: LCFF_X2_Y37_N17
\dff0|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(3));

-- Location: LCCOMB_X3_Y37_N28
\dff1|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[3]~feeder_combout\ = \dff0|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(3),
	combout => \dff1|tmp[3]~feeder_combout\);

-- Location: LCFF_X3_Y37_N29
\dff1|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(3));

-- Location: LCCOMB_X4_Y37_N8
\y_output[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[4]~19_combout\ = (\x_input~combout\(3) & ((\dff1|tmp\(3) & (!\y_output[3]~18\)) # (!\dff1|tmp\(3) & ((\y_output[3]~18\) # (GND))))) # (!\x_input~combout\(3) & ((\dff1|tmp\(3) & (\y_output[3]~18\ & VCC)) # (!\dff1|tmp\(3) & (!\y_output[3]~18\))))
-- \y_output[4]~20\ = CARRY((\x_input~combout\(3) & ((!\y_output[3]~18\) # (!\dff1|tmp\(3)))) # (!\x_input~combout\(3) & (!\dff1|tmp\(3) & !\y_output[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(3),
	datab => \dff1|tmp\(3),
	datad => VCC,
	cin => \y_output[3]~18\,
	combout => \y_output[4]~19_combout\,
	cout => \y_output[4]~20\);

-- Location: LCFF_X4_Y37_N9
\y_output[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[4]~reg0_regout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[4]~I\ : cycloneii_io
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
	padio => ww_x_input(4),
	combout => \x_input~combout\(4));

-- Location: LCFF_X3_Y37_N13
\dff0|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x_input~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(4));

-- Location: LCCOMB_X3_Y37_N22
\dff1|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[4]~feeder_combout\ = \dff0|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(4),
	combout => \dff1|tmp[4]~feeder_combout\);

-- Location: LCFF_X3_Y37_N23
\dff1|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(4));

-- Location: LCCOMB_X4_Y37_N10
\y_output[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[5]~21_combout\ = ((\x_input~combout\(4) $ (\dff1|tmp\(4) $ (\y_output[4]~20\)))) # (GND)
-- \y_output[5]~22\ = CARRY((\x_input~combout\(4) & (\dff1|tmp\(4) & !\y_output[4]~20\)) # (!\x_input~combout\(4) & ((\dff1|tmp\(4)) # (!\y_output[4]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(4),
	datab => \dff1|tmp\(4),
	datad => VCC,
	cin => \y_output[4]~20\,
	combout => \y_output[5]~21_combout\,
	cout => \y_output[5]~22\);

-- Location: LCFF_X4_Y37_N11
\y_output[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[5]~reg0_regout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[5]~I\ : cycloneii_io
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
	padio => ww_x_input(5),
	combout => \x_input~combout\(5));

-- Location: LCCOMB_X5_Y37_N18
\dff0|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[5]~feeder_combout\ = \x_input~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(5),
	combout => \dff0|tmp[5]~feeder_combout\);

-- Location: LCFF_X5_Y37_N19
\dff0|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(5));

-- Location: LCCOMB_X5_Y37_N28
\dff1|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[5]~feeder_combout\ = \dff0|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(5),
	combout => \dff1|tmp[5]~feeder_combout\);

-- Location: LCFF_X5_Y37_N29
\dff1|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(5));

-- Location: LCCOMB_X4_Y37_N12
\y_output[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[6]~23_combout\ = (\x_input~combout\(5) & ((\dff1|tmp\(5) & (!\y_output[5]~22\)) # (!\dff1|tmp\(5) & ((\y_output[5]~22\) # (GND))))) # (!\x_input~combout\(5) & ((\dff1|tmp\(5) & (\y_output[5]~22\ & VCC)) # (!\dff1|tmp\(5) & (!\y_output[5]~22\))))
-- \y_output[6]~24\ = CARRY((\x_input~combout\(5) & ((!\y_output[5]~22\) # (!\dff1|tmp\(5)))) # (!\x_input~combout\(5) & (!\dff1|tmp\(5) & !\y_output[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(5),
	datab => \dff1|tmp\(5),
	datad => VCC,
	cin => \y_output[5]~22\,
	combout => \y_output[6]~23_combout\,
	cout => \y_output[6]~24\);

-- Location: LCFF_X4_Y37_N13
\y_output[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[6]~reg0_regout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[6]~I\ : cycloneii_io
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
	padio => ww_x_input(6),
	combout => \x_input~combout\(6));

-- Location: LCFF_X3_Y37_N27
\dff0|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x_input~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(6));

-- Location: LCCOMB_X3_Y37_N16
\dff1|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[6]~feeder_combout\ = \dff0|tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(6),
	combout => \dff1|tmp[6]~feeder_combout\);

-- Location: LCFF_X3_Y37_N17
\dff1|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(6));

-- Location: LCCOMB_X4_Y37_N14
\y_output[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[7]~25_combout\ = ((\x_input~combout\(6) $ (\dff1|tmp\(6) $ (\y_output[6]~24\)))) # (GND)
-- \y_output[7]~26\ = CARRY((\x_input~combout\(6) & (\dff1|tmp\(6) & !\y_output[6]~24\)) # (!\x_input~combout\(6) & ((\dff1|tmp\(6)) # (!\y_output[6]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(6),
	datab => \dff1|tmp\(6),
	datad => VCC,
	cin => \y_output[6]~24\,
	combout => \y_output[7]~25_combout\,
	cout => \y_output[7]~26\);

-- Location: LCFF_X4_Y37_N15
\y_output[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[7]~reg0_regout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[7]~I\ : cycloneii_io
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
	padio => ww_x_input(7),
	combout => \x_input~combout\(7));

-- Location: LCCOMB_X4_Y37_N16
\y_output[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[8]~27_combout\ = (\dff1|tmp\(7) & ((\x_input~combout\(7) & (!\y_output[7]~26\)) # (!\x_input~combout\(7) & (\y_output[7]~26\ & VCC)))) # (!\dff1|tmp\(7) & ((\x_input~combout\(7) & ((\y_output[7]~26\) # (GND))) # (!\x_input~combout\(7) & 
-- (!\y_output[7]~26\))))
-- \y_output[8]~28\ = CARRY((\dff1|tmp\(7) & (\x_input~combout\(7) & !\y_output[7]~26\)) # (!\dff1|tmp\(7) & ((\x_input~combout\(7)) # (!\y_output[7]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dff1|tmp\(7),
	datab => \x_input~combout\(7),
	datad => VCC,
	cin => \y_output[7]~26\,
	combout => \y_output[8]~27_combout\,
	cout => \y_output[8]~28\);

-- Location: LCFF_X4_Y37_N17
\y_output[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[8]~reg0_regout\);

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[8]~I\ : cycloneii_io
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
	padio => ww_x_input(8),
	combout => \x_input~combout\(8));

-- Location: LCCOMB_X5_Y37_N0
\dff0|tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[8]~feeder_combout\ = \x_input~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(8),
	combout => \dff0|tmp[8]~feeder_combout\);

-- Location: LCFF_X5_Y37_N1
\dff0|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(8));

-- Location: LCCOMB_X5_Y37_N30
\dff1|tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[8]~feeder_combout\ = \dff0|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(8),
	combout => \dff1|tmp[8]~feeder_combout\);

-- Location: LCFF_X5_Y37_N31
\dff1|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(8));

-- Location: LCCOMB_X4_Y37_N18
\y_output[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[9]~29_combout\ = ((\x_input~combout\(8) $ (\dff1|tmp\(8) $ (\y_output[8]~28\)))) # (GND)
-- \y_output[9]~30\ = CARRY((\x_input~combout\(8) & (\dff1|tmp\(8) & !\y_output[8]~28\)) # (!\x_input~combout\(8) & ((\dff1|tmp\(8)) # (!\y_output[8]~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(8),
	datab => \dff1|tmp\(8),
	datad => VCC,
	cin => \y_output[8]~28\,
	combout => \y_output[9]~29_combout\,
	cout => \y_output[9]~30\);

-- Location: LCFF_X4_Y37_N19
\y_output[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[9]~reg0_regout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[9]~I\ : cycloneii_io
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
	padio => ww_x_input(9),
	combout => \x_input~combout\(9));

-- Location: LCCOMB_X4_Y37_N20
\y_output[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[10]~31_combout\ = (\dff1|tmp\(9) & ((\x_input~combout\(9) & (!\y_output[9]~30\)) # (!\x_input~combout\(9) & (\y_output[9]~30\ & VCC)))) # (!\dff1|tmp\(9) & ((\x_input~combout\(9) & ((\y_output[9]~30\) # (GND))) # (!\x_input~combout\(9) & 
-- (!\y_output[9]~30\))))
-- \y_output[10]~32\ = CARRY((\dff1|tmp\(9) & (\x_input~combout\(9) & !\y_output[9]~30\)) # (!\dff1|tmp\(9) & ((\x_input~combout\(9)) # (!\y_output[9]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dff1|tmp\(9),
	datab => \x_input~combout\(9),
	datad => VCC,
	cin => \y_output[9]~30\,
	combout => \y_output[10]~31_combout\,
	cout => \y_output[10]~32\);

-- Location: LCFF_X4_Y37_N21
\y_output[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[10]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[10]~reg0_regout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[10]~I\ : cycloneii_io
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
	padio => ww_x_input(10),
	combout => \x_input~combout\(10));

-- Location: LCCOMB_X4_Y37_N22
\y_output[11]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[11]~33_combout\ = ((\dff1|tmp\(10) $ (\x_input~combout\(10) $ (\y_output[10]~32\)))) # (GND)
-- \y_output[11]~34\ = CARRY((\dff1|tmp\(10) & ((!\y_output[10]~32\) # (!\x_input~combout\(10)))) # (!\dff1|tmp\(10) & (!\x_input~combout\(10) & !\y_output[10]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dff1|tmp\(10),
	datab => \x_input~combout\(10),
	datad => VCC,
	cin => \y_output[10]~32\,
	combout => \y_output[11]~33_combout\,
	cout => \y_output[11]~34\);

-- Location: LCFF_X4_Y37_N23
\y_output[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[11]~reg0_regout\);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[11]~I\ : cycloneii_io
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
	padio => ww_x_input(11),
	combout => \x_input~combout\(11));

-- Location: LCCOMB_X5_Y37_N2
\dff0|tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[11]~feeder_combout\ = \x_input~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(11),
	combout => \dff0|tmp[11]~feeder_combout\);

-- Location: LCFF_X5_Y37_N3
\dff0|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(11));

-- Location: LCCOMB_X5_Y37_N12
\dff1|tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[11]~feeder_combout\ = \dff0|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(11),
	combout => \dff1|tmp[11]~feeder_combout\);

-- Location: LCFF_X5_Y37_N13
\dff1|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(11));

-- Location: LCCOMB_X4_Y37_N24
\y_output[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[12]~35_combout\ = (\x_input~combout\(11) & ((\dff1|tmp\(11) & (!\y_output[11]~34\)) # (!\dff1|tmp\(11) & ((\y_output[11]~34\) # (GND))))) # (!\x_input~combout\(11) & ((\dff1|tmp\(11) & (\y_output[11]~34\ & VCC)) # (!\dff1|tmp\(11) & 
-- (!\y_output[11]~34\))))
-- \y_output[12]~36\ = CARRY((\x_input~combout\(11) & ((!\y_output[11]~34\) # (!\dff1|tmp\(11)))) # (!\x_input~combout\(11) & (!\dff1|tmp\(11) & !\y_output[11]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(11),
	datab => \dff1|tmp\(11),
	datad => VCC,
	cin => \y_output[11]~34\,
	combout => \y_output[12]~35_combout\,
	cout => \y_output[12]~36\);

-- Location: LCFF_X4_Y37_N25
\y_output[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[12]~reg0_regout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[12]~I\ : cycloneii_io
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
	padio => ww_x_input(12),
	combout => \x_input~combout\(12));

-- Location: LCCOMB_X3_Y37_N2
\dff0|tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff0|tmp[12]~feeder_combout\ = \x_input~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(12),
	combout => \dff0|tmp[12]~feeder_combout\);

-- Location: LCFF_X3_Y37_N3
\dff0|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff0|tmp[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff0|tmp\(12));

-- Location: LCCOMB_X3_Y37_N24
\dff1|tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[12]~feeder_combout\ = \dff0|tmp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff0|tmp\(12),
	combout => \dff1|tmp[12]~feeder_combout\);

-- Location: LCFF_X3_Y37_N25
\dff1|tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(12));

-- Location: LCCOMB_X4_Y37_N26
\y_output[13]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[13]~37_combout\ = \x_input~combout\(12) $ (\y_output[12]~36\ $ (\dff1|tmp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x_input~combout\(12),
	datad => \dff1|tmp\(12),
	cin => \y_output[12]~36\,
	combout => \y_output[13]~37_combout\);

-- Location: LCFF_X4_Y37_N27
\y_output[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[13]~reg0_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x_input[13]~I\ : cycloneii_io
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
	padio => ww_x_input(13));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[1]~I\ : cycloneii_io
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
	datain => \y_output[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(1));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[2]~I\ : cycloneii_io
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
	datain => \y_output[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(2));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[3]~I\ : cycloneii_io
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
	datain => \y_output[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[4]~I\ : cycloneii_io
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
	datain => \y_output[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(4));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[5]~I\ : cycloneii_io
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
	datain => \y_output[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[6]~I\ : cycloneii_io
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
	datain => \y_output[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[7]~I\ : cycloneii_io
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
	datain => \y_output[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(7));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[8]~I\ : cycloneii_io
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
	datain => \y_output[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(8));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[9]~I\ : cycloneii_io
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
	datain => \y_output[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(9));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[10]~I\ : cycloneii_io
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
	datain => \y_output[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(10));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[11]~I\ : cycloneii_io
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
	datain => \y_output[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(11));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[12]~I\ : cycloneii_io
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
	datain => \y_output[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(12));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y_output[13]~I\ : cycloneii_io
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
	datain => \y_output[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(13));
END structure;


