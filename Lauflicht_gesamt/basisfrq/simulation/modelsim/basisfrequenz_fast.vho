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

-- DATE "05/29/2019 00:26:32"

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

ENTITY 	basisfrequenz IS
    PORT (
	clk_orginal : IN std_logic;
	clk_basis : OUT std_logic
	);
END basisfrequenz;

-- Design Ports Information
-- clk_basis	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_orginal	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF basisfrequenz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_orginal : std_logic;
SIGNAL ww_clk_basis : std_logic;
SIGNAL \clk_orginal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_orginal~combout\ : std_logic;
SIGNAL \clk_orginal~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~3_combout\ : std_logic;
SIGNAL \counter[1]~2_combout\ : std_logic;
SIGNAL \counter[2]~1_combout\ : std_logic;
SIGNAL \counter[3]~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \clk_basis~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk_orginal <= clk_orginal;
clk_basis <= ww_clk_basis;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_orginal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_orginal~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_orginal~I\ : cycloneii_io
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
	padio => ww_clk_orginal,
	combout => \clk_orginal~combout\);

-- Location: CLKCTRL_G3
\clk_orginal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_orginal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_orginal~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y24_N20
\counter[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~3_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~3_combout\);

-- Location: LCFF_X1_Y24_N21
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_orginal~clkctrl_outclk\,
	datain => \counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X1_Y24_N18
\counter[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~2_combout\ = counter(1) $ (!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(1),
	datad => counter(0),
	combout => \counter[1]~2_combout\);

-- Location: LCFF_X1_Y24_N19
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_orginal~clkctrl_outclk\,
	datain => \counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X1_Y24_N4
\counter[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~1_combout\ = counter(2) $ (((!counter(0) & counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \counter[2]~1_combout\);

-- Location: LCFF_X1_Y24_N5
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_orginal~clkctrl_outclk\,
	datain => \counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X1_Y24_N26
\counter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~0_combout\ = counter(3) $ (((!counter(0) & (counter(2) & counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(3),
	datad => counter(1),
	combout => \counter[3]~0_combout\);

-- Location: LCFF_X1_Y24_N27
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_orginal~clkctrl_outclk\,
	datain => \counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X1_Y24_N28
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!counter(3) & ((!counter(1)) # (!counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datac => counter(2),
	datad => counter(1),
	combout => \LessThan1~0_combout\);

-- Location: LCFF_X1_Y24_N29
\clk_basis~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_orginal~clkctrl_outclk\,
	datain => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_basis~reg0_regout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clk_basis~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_basis);
END structure;


