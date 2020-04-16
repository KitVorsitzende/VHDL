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

-- DATE "07/05/2019 22:56:26"

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

ENTITY 	clockdivider IS
    PORT (
	clk_basis : IN std_logic;
	clk_div : OUT std_logic
	);
END clockdivider;

-- Design Ports Information
-- clk_div	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_basis	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF clockdivider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_basis : std_logic;
SIGNAL ww_clk_div : std_logic;
SIGNAL \clk_basis~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div[4]~11_combout\ : std_logic;
SIGNAL \div[0]~15_combout\ : std_logic;
SIGNAL \clk_basis~combout\ : std_logic;
SIGNAL \clk_basis~clkctrl_outclk\ : std_logic;
SIGNAL \div[1]~5_combout\ : std_logic;
SIGNAL \div[1]~6\ : std_logic;
SIGNAL \div[2]~7_combout\ : std_logic;
SIGNAL \div[2]~8\ : std_logic;
SIGNAL \div[3]~9_combout\ : std_logic;
SIGNAL \div[3]~10\ : std_logic;
SIGNAL \div[4]~12\ : std_logic;
SIGNAL \div[5]~13_combout\ : std_logic;
SIGNAL div : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk_basis <= clk_basis;
clk_div <= ww_clk_div;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_basis~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_basis~combout\);

-- Location: LCFF_X1_Y24_N7
\div[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_basis~clkctrl_outclk\,
	datain => \div[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div(4));

-- Location: LCCOMB_X1_Y24_N6
\div[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \div[4]~11_combout\ = (div(4) & (!\div[3]~10\)) # (!div(4) & ((\div[3]~10\) # (GND)))
-- \div[4]~12\ = CARRY((!\div[3]~10\) # (!div(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div(4),
	datad => VCC,
	cin => \div[3]~10\,
	combout => \div[4]~11_combout\,
	cout => \div[4]~12\);

-- Location: LCFF_X1_Y24_N11
\div[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_basis~clkctrl_outclk\,
	datain => \div[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div(0));

-- Location: LCCOMB_X1_Y24_N10
\div[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \div[0]~15_combout\ = !div(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => div(0),
	combout => \div[0]~15_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_basis~I\ : cycloneii_io
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
	padio => ww_clk_basis,
	combout => \clk_basis~combout\);

-- Location: CLKCTRL_G3
\clk_basis~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_basis~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_basis~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y24_N0
\div[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \div[1]~5_combout\ = (div(0) & (div(1) $ (VCC))) # (!div(0) & (div(1) & VCC))
-- \div[1]~6\ = CARRY((div(0) & div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div(0),
	datab => div(1),
	datad => VCC,
	combout => \div[1]~5_combout\,
	cout => \div[1]~6\);

-- Location: LCFF_X1_Y24_N1
\div[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_basis~clkctrl_outclk\,
	datain => \div[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div(1));

-- Location: LCCOMB_X1_Y24_N2
\div[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \div[2]~7_combout\ = (div(2) & (!\div[1]~6\)) # (!div(2) & ((\div[1]~6\) # (GND)))
-- \div[2]~8\ = CARRY((!\div[1]~6\) # (!div(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div(2),
	datad => VCC,
	cin => \div[1]~6\,
	combout => \div[2]~7_combout\,
	cout => \div[2]~8\);

-- Location: LCFF_X1_Y24_N3
\div[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_basis~clkctrl_outclk\,
	datain => \div[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div(2));

-- Location: LCCOMB_X1_Y24_N4
\div[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \div[3]~9_combout\ = (div(3) & (\div[2]~8\ $ (GND))) # (!div(3) & (!\div[2]~8\ & VCC))
-- \div[3]~10\ = CARRY((div(3) & !\div[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div(3),
	datad => VCC,
	cin => \div[2]~8\,
	combout => \div[3]~9_combout\,
	cout => \div[3]~10\);

-- Location: LCFF_X1_Y24_N5
\div[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_basis~clkctrl_outclk\,
	datain => \div[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div(3));

-- Location: LCCOMB_X1_Y24_N8
\div[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \div[5]~13_combout\ = div(5) $ (!\div[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div(5),
	cin => \div[4]~12\,
	combout => \div[5]~13_combout\);

-- Location: LCFF_X1_Y24_N9
\div[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_basis~clkctrl_outclk\,
	datain => \div[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div(5));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_div~I\ : cycloneii_io
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
	datain => div(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_div);
END structure;


