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

-- DATE "07/01/2019 22:14:16"

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

ENTITY 	Bandsperre IS
    PORT (
	clk : IN std_logic;
	x_input : IN IEEE.NUMERIC_STD.signed(13 DOWNTO 0);
	y_output : OUT IEEE.NUMERIC_STD.signed(13 DOWNTO 0)
	);
END Bandsperre;

-- Design Ports Information
-- x_input[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y_output[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[5]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[7]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[8]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[9]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[10]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[11]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[12]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y_output[13]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x_input[2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[6]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[9]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[10]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[11]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x_input[13]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Bandsperre IS
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
SIGNAL ww_x_input : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_y_output : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dff2|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \dff1|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \dff1|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \y_output[0]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \y_output[1]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \y_output[2]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \y_output[3]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \y_output[4]~reg0_regout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \y_output[5]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \y_output[6]~reg0_regout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \y_output[7]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \y_output[8]~reg0_regout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \y_output[9]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \y_output[10]~reg0_regout\ : std_logic;
SIGNAL \dff1|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \dff2|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \y_output[11]~reg0_regout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \y_output[12]~reg0feeder_combout\ : std_logic;
SIGNAL \y_output[12]~reg0_regout\ : std_logic;
SIGNAL \y_output[13]~reg0_regout\ : std_logic;
SIGNAL \x_input~combout\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \dff2|tmp\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \dff1|tmp\ : std_logic_vector(13 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_x_input <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(x_input);
y_output <= IEEE.NUMERIC_STD.SIGNED(ww_y_output);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X42_Y50_N27
\dff2|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(5));

-- Location: LCFF_X42_Y50_N5
\dff2|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(7));

-- Location: LCFF_X40_Y50_N15
\dff2|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(9));

-- Location: LCFF_X42_Y50_N1
\dff1|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(5));

-- Location: LCFF_X42_Y50_N19
\dff1|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x_input~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(7));

-- Location: LCFF_X40_Y50_N13
\dff1|tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(9));

-- Location: LCCOMB_X42_Y50_N26
\dff2|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[5]~feeder_combout\ = \dff1|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(5),
	combout => \dff2|tmp[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y50_N4
\dff2|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[7]~feeder_combout\ = \dff1|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(7),
	combout => \dff2|tmp[7]~feeder_combout\);

-- Location: LCCOMB_X40_Y50_N14
\dff2|tmp[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[9]~feeder_combout\ = \dff1|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(9),
	combout => \dff2|tmp[9]~feeder_combout\);

-- Location: LCCOMB_X42_Y50_N0
\dff1|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[5]~feeder_combout\ = \x_input~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(7),
	combout => \dff1|tmp[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y50_N12
\dff1|tmp[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[9]~feeder_combout\ = \x_input~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(11),
	combout => \dff1|tmp[9]~feeder_combout\);

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

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y50_N30
\dff1|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[0]~feeder_combout\ = \x_input~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(2),
	combout => \dff1|tmp[0]~feeder_combout\);

-- Location: LCFF_X42_Y50_N31
\dff1|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(0));

-- Location: LCCOMB_X41_Y50_N2
\dff2|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[0]~feeder_combout\ = \dff1|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(0),
	combout => \dff2|tmp[0]~feeder_combout\);

-- Location: LCFF_X41_Y50_N3
\dff2|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(0));

-- Location: LCCOMB_X41_Y50_N6
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\x_input~combout\(2) & (\dff2|tmp\(0) $ (VCC))) # (!\x_input~combout\(2) & (\dff2|tmp\(0) & VCC))
-- \Add1~1\ = CARRY((\x_input~combout\(2) & \dff2|tmp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(2),
	datab => \dff2|tmp\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCFF_X41_Y50_N7
\y_output[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[0]~reg0_regout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y50_N28
\dff1|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[1]~feeder_combout\ = \x_input~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(3),
	combout => \dff1|tmp[1]~feeder_combout\);

-- Location: LCFF_X42_Y50_N29
\dff1|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(1));

-- Location: LCCOMB_X41_Y50_N4
\dff2|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[1]~feeder_combout\ = \dff1|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(1),
	combout => \dff2|tmp[1]~feeder_combout\);

-- Location: LCFF_X41_Y50_N5
\dff2|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(1));

-- Location: LCCOMB_X41_Y50_N8
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\x_input~combout\(3) & ((\dff2|tmp\(1) & (\Add1~1\ & VCC)) # (!\dff2|tmp\(1) & (!\Add1~1\)))) # (!\x_input~combout\(3) & ((\dff2|tmp\(1) & (!\Add1~1\)) # (!\dff2|tmp\(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\x_input~combout\(3) & (!\dff2|tmp\(1) & !\Add1~1\)) # (!\x_input~combout\(3) & ((!\Add1~1\) # (!\dff2|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(3),
	datab => \dff2|tmp\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCFF_X41_Y50_N9
\y_output[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[1]~reg0_regout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y50_N6
\dff1|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[2]~feeder_combout\ = \x_input~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(4),
	combout => \dff1|tmp[2]~feeder_combout\);

-- Location: LCFF_X42_Y50_N7
\dff1|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(2));

-- Location: LCCOMB_X42_Y50_N24
\dff2|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[2]~feeder_combout\ = \dff1|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(2),
	combout => \dff2|tmp[2]~feeder_combout\);

-- Location: LCFF_X42_Y50_N25
\dff2|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(2));

-- Location: LCCOMB_X41_Y50_N10
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\x_input~combout\(4) $ (\dff2|tmp\(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\x_input~combout\(4) & ((\dff2|tmp\(2)) # (!\Add1~3\))) # (!\x_input~combout\(4) & (\dff2|tmp\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(4),
	datab => \dff2|tmp\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCFF_X41_Y50_N11
\y_output[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[2]~reg0_regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y50_N2
\dff1|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[3]~feeder_combout\ = \x_input~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(5),
	combout => \dff1|tmp[3]~feeder_combout\);

-- Location: LCFF_X40_Y50_N3
\dff1|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(3));

-- Location: LCCOMB_X40_Y50_N24
\dff2|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[3]~feeder_combout\ = \dff1|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(3),
	combout => \dff2|tmp[3]~feeder_combout\);

-- Location: LCFF_X40_Y50_N25
\dff2|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(3));

-- Location: LCCOMB_X41_Y50_N12
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\x_input~combout\(5) & ((\dff2|tmp\(3) & (\Add1~5\ & VCC)) # (!\dff2|tmp\(3) & (!\Add1~5\)))) # (!\x_input~combout\(5) & ((\dff2|tmp\(3) & (!\Add1~5\)) # (!\dff2|tmp\(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\x_input~combout\(5) & (!\dff2|tmp\(3) & !\Add1~5\)) # (!\x_input~combout\(5) & ((!\Add1~5\) # (!\dff2|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(5),
	datab => \dff2|tmp\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCFF_X41_Y50_N13
\y_output[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[3]~reg0_regout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y50_N0
\dff1|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[4]~feeder_combout\ = \x_input~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(6),
	combout => \dff1|tmp[4]~feeder_combout\);

-- Location: LCFF_X40_Y50_N1
\dff1|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(4));

-- Location: LCCOMB_X40_Y50_N22
\dff2|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[4]~feeder_combout\ = \dff1|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(4),
	combout => \dff2|tmp[4]~feeder_combout\);

-- Location: LCFF_X40_Y50_N23
\dff2|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(4));

-- Location: LCCOMB_X41_Y50_N14
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\x_input~combout\(6) $ (\dff2|tmp\(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\x_input~combout\(6) & ((\dff2|tmp\(4)) # (!\Add1~7\))) # (!\x_input~combout\(6) & (\dff2|tmp\(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(6),
	datab => \dff2|tmp\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCFF_X41_Y50_N15
\y_output[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[4]~reg0_regout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X41_Y50_N16
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\dff2|tmp\(5) & ((\x_input~combout\(7) & (\Add1~9\ & VCC)) # (!\x_input~combout\(7) & (!\Add1~9\)))) # (!\dff2|tmp\(5) & ((\x_input~combout\(7) & (!\Add1~9\)) # (!\x_input~combout\(7) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\dff2|tmp\(5) & (!\x_input~combout\(7) & !\Add1~9\)) # (!\dff2|tmp\(5) & ((!\Add1~9\) # (!\x_input~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dff2|tmp\(5),
	datab => \x_input~combout\(7),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCFF_X41_Y50_N17
\y_output[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[5]~reg0_regout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y50_N6
\dff1|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[6]~feeder_combout\ = \x_input~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(8),
	combout => \dff1|tmp[6]~feeder_combout\);

-- Location: LCFF_X40_Y50_N7
\dff1|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(6));

-- Location: LCCOMB_X40_Y50_N28
\dff2|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[6]~feeder_combout\ = \dff1|tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(6),
	combout => \dff2|tmp[6]~feeder_combout\);

-- Location: LCFF_X40_Y50_N29
\dff2|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(6));

-- Location: LCCOMB_X41_Y50_N18
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\x_input~combout\(8) $ (\dff2|tmp\(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\x_input~combout\(8) & ((\dff2|tmp\(6)) # (!\Add1~11\))) # (!\x_input~combout\(8) & (\dff2|tmp\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(8),
	datab => \dff2|tmp\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCFF_X41_Y50_N19
\y_output[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[6]~reg0_regout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X41_Y50_N20
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\dff2|tmp\(7) & ((\x_input~combout\(9) & (\Add1~13\ & VCC)) # (!\x_input~combout\(9) & (!\Add1~13\)))) # (!\dff2|tmp\(7) & ((\x_input~combout\(9) & (!\Add1~13\)) # (!\x_input~combout\(9) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\dff2|tmp\(7) & (!\x_input~combout\(9) & !\Add1~13\)) # (!\dff2|tmp\(7) & ((!\Add1~13\) # (!\x_input~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dff2|tmp\(7),
	datab => \x_input~combout\(9),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCFF_X41_Y50_N21
\y_output[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[7]~reg0_regout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y50_N12
\dff1|tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[8]~feeder_combout\ = \x_input~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(10),
	combout => \dff1|tmp[8]~feeder_combout\);

-- Location: LCFF_X42_Y50_N13
\dff1|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(8));

-- Location: LCCOMB_X42_Y50_N14
\dff2|tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[8]~feeder_combout\ = \dff1|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(8),
	combout => \dff2|tmp[8]~feeder_combout\);

-- Location: LCFF_X42_Y50_N15
\dff2|tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(8));

-- Location: LCCOMB_X41_Y50_N22
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\x_input~combout\(10) $ (\dff2|tmp\(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\x_input~combout\(10) & ((\dff2|tmp\(8)) # (!\Add1~15\))) # (!\x_input~combout\(10) & (\dff2|tmp\(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(10),
	datab => \dff2|tmp\(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCFF_X41_Y50_N23
\y_output[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[8]~reg0_regout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X41_Y50_N24
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\dff2|tmp\(9) & ((\x_input~combout\(11) & (\Add1~17\ & VCC)) # (!\x_input~combout\(11) & (!\Add1~17\)))) # (!\dff2|tmp\(9) & ((\x_input~combout\(11) & (!\Add1~17\)) # (!\x_input~combout\(11) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\dff2|tmp\(9) & (!\x_input~combout\(11) & !\Add1~17\)) # (!\dff2|tmp\(9) & ((!\Add1~17\) # (!\x_input~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dff2|tmp\(9),
	datab => \x_input~combout\(11),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCFF_X41_Y50_N25
\y_output[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[9]~reg0_regout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y50_N18
\dff1|tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[10]~feeder_combout\ = \x_input~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(12),
	combout => \dff1|tmp[10]~feeder_combout\);

-- Location: LCFF_X40_Y50_N19
\dff1|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(10));

-- Location: LCCOMB_X40_Y50_N16
\dff2|tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[10]~feeder_combout\ = \dff1|tmp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(10),
	combout => \dff2|tmp[10]~feeder_combout\);

-- Location: LCFF_X40_Y50_N17
\dff2|tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(10));

-- Location: LCCOMB_X41_Y50_N26
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\x_input~combout\(12) $ (\dff2|tmp\(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\x_input~combout\(12) & ((\dff2|tmp\(10)) # (!\Add1~19\))) # (!\x_input~combout\(12) & (\dff2|tmp\(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(12),
	datab => \dff2|tmp\(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCFF_X41_Y50_N27
\y_output[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[10]~reg0_regout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_x_input(13),
	combout => \x_input~combout\(13));

-- Location: LCCOMB_X42_Y50_N2
\dff1|tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff1|tmp[11]~feeder_combout\ = \x_input~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_input~combout\(13),
	combout => \dff1|tmp[11]~feeder_combout\);

-- Location: LCFF_X42_Y50_N3
\dff1|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff1|tmp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff1|tmp\(11));

-- Location: LCCOMB_X42_Y50_N20
\dff2|tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dff2|tmp[11]~feeder_combout\ = \dff1|tmp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff1|tmp\(11),
	combout => \dff2|tmp[11]~feeder_combout\);

-- Location: LCFF_X42_Y50_N21
\dff2|tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dff2|tmp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dff2|tmp\(11));

-- Location: LCCOMB_X41_Y50_N28
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\x_input~combout\(13) & ((\dff2|tmp\(11) & (\Add1~21\ & VCC)) # (!\dff2|tmp\(11) & (!\Add1~21\)))) # (!\x_input~combout\(13) & ((\dff2|tmp\(11) & (!\Add1~21\)) # (!\dff2|tmp\(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\x_input~combout\(13) & (!\dff2|tmp\(11) & !\Add1~21\)) # (!\x_input~combout\(13) & ((!\Add1~21\) # (!\dff2|tmp\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(13),
	datab => \dff2|tmp\(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCFF_X41_Y50_N29
\y_output[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[11]~reg0_regout\);

-- Location: LCCOMB_X41_Y50_N30
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = \x_input~combout\(13) $ (\Add1~23\ $ (!\dff2|tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_input~combout\(13),
	datad => \dff2|tmp\(11),
	cin => \Add1~23\,
	combout => \Add1~24_combout\);

-- Location: LCCOMB_X41_Y50_N0
\y_output[12]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_output[12]~reg0feeder_combout\ = \Add1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~24_combout\,
	combout => \y_output[12]~reg0feeder_combout\);

-- Location: LCFF_X41_Y50_N1
\y_output[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y_output[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[12]~reg0_regout\);

-- Location: LCFF_X41_Y50_N31
\y_output[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_output[13]~reg0_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_x_input(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_x_input(1));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \y_output[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y_output(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


