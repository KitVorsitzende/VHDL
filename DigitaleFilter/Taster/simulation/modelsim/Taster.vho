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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "07/09/2019 15:19:10"

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

ENTITY 	Taster IS
    PORT (
	change : IN std_logic;
	filter_type : OUT std_logic_vector(1 DOWNTO 0)
	);
END Taster;

-- Design Ports Information
-- filter_type[0]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- filter_type[1]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- change	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Taster IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_change : std_logic;
SIGNAL ww_filter_type : std_logic_vector(1 DOWNTO 0);
SIGNAL \change~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \change~combout\ : std_logic;
SIGNAL \change~clkctrl_outclk\ : std_logic;
SIGNAL \tmp[0]~1_combout\ : std_logic;
SIGNAL \tmp[1]~0_combout\ : std_logic;
SIGNAL tmp : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_change <= change;
filter_type <= ww_filter_type;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\change~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \change~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\change~I\ : cycloneii_io
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
	padio => ww_change,
	combout => \change~combout\);

-- Location: CLKCTRL_G3
\change~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \change~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \change~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y46_N28
\tmp[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[0]~1_combout\ = !tmp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(0),
	combout => \tmp[0]~1_combout\);

-- Location: LCFF_X1_Y46_N29
\tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \change~clkctrl_outclk\,
	datain => \tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(0));

-- Location: LCCOMB_X1_Y46_N6
\tmp[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[1]~0_combout\ = tmp(1) $ (tmp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(1),
	datad => tmp(0),
	combout => \tmp[1]~0_combout\);

-- Location: LCFF_X1_Y46_N7
\tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \change~clkctrl_outclk\,
	datain => \tmp[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(1));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\filter_type[0]~I\ : cycloneii_io
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
	datain => tmp(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_filter_type(0));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\filter_type[1]~I\ : cycloneii_io
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
	datain => tmp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_filter_type(1));
END structure;


