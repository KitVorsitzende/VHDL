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

-- DATE "06/26/2019 10:20:32"

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

ENTITY 	Hochpass IS
    PORT (
	y2 : OUT std_logic_vector(13 DOWNTO 0);
	clk : IN std_logic;
	clr : IN std_logic;
	x2 : IN std_logic_vector(13 DOWNTO 0)
	);
END Hochpass;

-- Design Ports Information
-- y2[13]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[12]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[11]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[10]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[9]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[8]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[7]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[6]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[4]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[3]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[13]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[12]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[11]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[10]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[9]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[8]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[6]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[5]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[3]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[2]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Hochpass IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y2 : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_x2 : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~0_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~4_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~9\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[3][2]~1_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[2][5]~2_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[2][4]~3_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[1][6]~5_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[1][4]~7_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[1][3]~8_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[1][2]~10_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[0][5]~11_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \clr~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[2][3]~4_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\ : std_logic;
SIGNAL \inst|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[1][5]~6_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~3\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~5\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~7\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~8_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\ : std_logic;
SIGNAL \inst2|lpm_mult_component|mult_core|romout[0][3]~14_combout\ : std_logic;
SIGNAL \inst5|dffs[0]~15\ : std_logic;
SIGNAL \inst5|dffs[1]~17\ : std_logic;
SIGNAL \inst5|dffs[2]~19\ : std_logic;
SIGNAL \inst5|dffs[3]~21\ : std_logic;
SIGNAL \inst5|dffs[4]~23\ : std_logic;
SIGNAL \inst5|dffs[5]~25\ : std_logic;
SIGNAL \inst5|dffs[6]~27\ : std_logic;
SIGNAL \inst5|dffs[7]~29\ : std_logic;
SIGNAL \inst5|dffs[8]~31\ : std_logic;
SIGNAL \inst5|dffs[9]~33\ : std_logic;
SIGNAL \inst5|dffs[10]~35\ : std_logic;
SIGNAL \inst5|dffs[11]~37\ : std_logic;
SIGNAL \inst5|dffs[12]~39\ : std_logic;
SIGNAL \inst5|dffs[13]~40_combout\ : std_logic;
SIGNAL \inst5|dffs[12]~38_combout\ : std_logic;
SIGNAL \inst5|dffs[11]~36_combout\ : std_logic;
SIGNAL \inst5|dffs[10]~34_combout\ : std_logic;
SIGNAL \inst5|dffs[9]~32_combout\ : std_logic;
SIGNAL \inst5|dffs[8]~30_combout\ : std_logic;
SIGNAL \inst5|dffs[7]~28_combout\ : std_logic;
SIGNAL \inst5|dffs[6]~26_combout\ : std_logic;
SIGNAL \inst5|dffs[5]~24_combout\ : std_logic;
SIGNAL \inst5|dffs[4]~22_combout\ : std_logic;
SIGNAL \inst5|dffs[2]~18_combout\ : std_logic;
SIGNAL \inst5|dffs[1]~16_combout\ : std_logic;
SIGNAL \inst5|dffs[0]~14_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst5|dffs[3]~20_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \inst5|dffs\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst4|dffs\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|dffs\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \x2~combout\ : std_logic_vector(13 DOWNTO 0);

BEGIN

y2 <= ww_y2;
ww_clk <= clk;
ww_clr <= clr;
ww_x2 <= x2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clr~combout\);

-- Location: LCCOMB_X76_Y45_N0
\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~0_combout\ = (\inst2|lpm_mult_component|mult_core|romout[0][5]~11_combout\ & (\inst|dffs\(4) $ (VCC))) # (!\inst2|lpm_mult_component|mult_core|romout[0][5]~11_combout\ & 
-- (\inst|dffs\(4) & VCC))
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\ = CARRY((\inst2|lpm_mult_component|mult_core|romout[0][5]~11_combout\ & \inst|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|romout[0][5]~11_combout\,
	datab => \inst|dffs\(4),
	datad => VCC,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~0_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\);

-- Location: LCCOMB_X76_Y45_N2
\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2_combout\ = (\inst2|lpm_mult_component|mult_core|romout[1][2]~10_combout\ & ((\inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\ & 
-- (\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\ & VCC)) # (!\inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\)))) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[1][2]~10_combout\ & ((\inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\)) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\ & ((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\) # (GND)))))
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~3\ = CARRY((\inst2|lpm_mult_component|mult_core|romout[1][2]~10_combout\ & (!\inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\ & 
-- !\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\)) # (!\inst2|lpm_mult_component|mult_core|romout[1][2]~10_combout\ & ((!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|romout[1][2]~10_combout\,
	datab => \inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~1\,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~3\);

-- Location: LCCOMB_X76_Y45_N4
\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~4_combout\ = (\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~3\ & ((\inst2|lpm_mult_component|mult_core|romout[1][3]~8_combout\ $ 
-- (\inst|dffs\(6))))) # (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~3\ & (\inst2|lpm_mult_component|mult_core|romout[1][3]~8_combout\ $ (\inst|dffs\(6) $ (VCC))))
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~5\ = CARRY((!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~3\ & (\inst2|lpm_mult_component|mult_core|romout[1][3]~8_combout\ $ (\inst|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|romout[1][3]~8_combout\,
	datab => \inst|dffs\(6),
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~3\,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~4_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~5\);

-- Location: LCCOMB_X76_Y45_N6
\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6_combout\ = (\inst2|lpm_mult_component|mult_core|romout[1][4]~7_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~5\)) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[1][4]~7_combout\ & ((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~5\) # (GND)))
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~7\ = CARRY((!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~5\) # (!\inst2|lpm_mult_component|mult_core|romout[1][4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|romout[1][4]~7_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~5\,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~7\);

-- Location: LCCOMB_X76_Y45_N8
\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~8_combout\ = (\inst2|lpm_mult_component|mult_core|romout[1][5]~6_combout\ & (\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~7\ $ (GND))) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[1][5]~6_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~7\ & VCC))
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~9\ = CARRY((\inst2|lpm_mult_component|mult_core|romout[1][5]~6_combout\ & !\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|lpm_mult_component|mult_core|romout[1][5]~6_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~7\,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~8_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~9\);

-- Location: LCCOMB_X76_Y45_N10
\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10_combout\ = \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~9\ $ (\inst2|lpm_mult_component|mult_core|romout[1][6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|lpm_mult_component|mult_core|romout[1][6]~5_combout\,
	cin => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~9\,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10_combout\);

-- Location: LCCOMB_X76_Y45_N12
\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\inst|dffs\(8) & (\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~8_combout\ $ (VCC))) # (!\inst|dffs\(8) & 
-- (\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~8_combout\ & VCC))
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\inst|dffs\(8) & \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(8),
	datab => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~8_combout\,
	datad => VCC,
	combout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X76_Y45_N14
\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10_combout\ & ((\inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\ & 
-- (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) 
-- # (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10_combout\ & ((\inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\ & ((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10_combout\ & (!\inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\ & 
-- !\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10_combout\ & 
-- ((!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (!\inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~10_combout\,
	datab => \inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X76_Y45_N20
\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = (\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & 
-- (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ $ (GND))) # (!\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ & VCC))
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & 
-- !\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X75_Y45_N6
\inst2|lpm_mult_component|mult_core|romout[3][2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[3][2]~1_combout\ = \inst|dffs\(13) $ (\inst|dffs\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(13),
	datad => \inst|dffs\(12),
	combout => \inst2|lpm_mult_component|mult_core|romout[3][2]~1_combout\);

-- Location: LCCOMB_X75_Y45_N20
\inst2|lpm_mult_component|mult_core|romout[2][5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[2][5]~2_combout\ = (\inst|dffs\(10) & (\inst|dffs\(9) & ((!\inst|dffs\(11))))) # (!\inst|dffs\(10) & (\inst|dffs\(11) & ((!\inst|dffs\(8)) # (!\inst|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(10),
	datab => \inst|dffs\(9),
	datac => \inst|dffs\(8),
	datad => \inst|dffs\(11),
	combout => \inst2|lpm_mult_component|mult_core|romout[2][5]~2_combout\);

-- Location: LCCOMB_X75_Y45_N10
\inst2|lpm_mult_component|mult_core|romout[2][4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[2][4]~3_combout\ = \inst|dffs\(11) $ (((\inst|dffs\(9) & (!\inst|dffs\(10) & \inst|dffs\(8))) # (!\inst|dffs\(9) & (\inst|dffs\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(11),
	datab => \inst|dffs\(9),
	datac => \inst|dffs\(10),
	datad => \inst|dffs\(8),
	combout => \inst2|lpm_mult_component|mult_core|romout[2][4]~3_combout\);

-- Location: LCCOMB_X75_Y45_N4
\inst2|lpm_mult_component|mult_core|romout[1][6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[1][6]~5_combout\ = (\inst|dffs\(7) & ((\inst|dffs\(6)) # ((\inst|dffs\(5) & \inst|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(7),
	datab => \inst|dffs\(6),
	datac => \inst|dffs\(5),
	datad => \inst|dffs\(4),
	combout => \inst2|lpm_mult_component|mult_core|romout[1][6]~5_combout\);

-- Location: LCCOMB_X75_Y45_N14
\inst2|lpm_mult_component|mult_core|romout[1][4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[1][4]~7_combout\ = \inst|dffs\(7) $ (((\inst|dffs\(5) & (!\inst|dffs\(6) & \inst|dffs\(4))) # (!\inst|dffs\(5) & (\inst|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(7),
	datab => \inst|dffs\(5),
	datac => \inst|dffs\(6),
	datad => \inst|dffs\(4),
	combout => \inst2|lpm_mult_component|mult_core|romout[1][4]~7_combout\);

-- Location: LCCOMB_X75_Y45_N16
\inst2|lpm_mult_component|mult_core|romout[1][3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[1][3]~8_combout\ = (\inst|dffs\(5) & !\inst|dffs\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dffs\(5),
	datad => \inst|dffs\(4),
	combout => \inst2|lpm_mult_component|mult_core|romout[1][3]~8_combout\);

-- Location: LCFF_X76_Y45_N21
\inst|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(1),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(1));

-- Location: LCCOMB_X75_Y45_N30
\inst2|lpm_mult_component|mult_core|romout[1][2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[1][2]~10_combout\ = \inst|dffs\(5) $ (\inst|dffs\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dffs\(5),
	datad => \inst|dffs\(4),
	combout => \inst2|lpm_mult_component|mult_core|romout[1][2]~10_combout\);

-- Location: LCCOMB_X76_Y45_N28
\inst2|lpm_mult_component|mult_core|romout[0][5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[0][5]~11_combout\ = (\inst|dffs\(2) & (\inst|dffs\(1) & ((!\inst|dffs\(3))))) # (!\inst|dffs\(2) & (\inst|dffs\(3) & ((!\inst|dffs\(0)) # (!\inst|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(1),
	datab => \inst|dffs\(2),
	datac => \inst|dffs\(0),
	datad => \inst|dffs\(3),
	combout => \inst2|lpm_mult_component|mult_core|romout[0][5]~11_combout\);

-- Location: LCFF_X78_Y45_N1
\inst4|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(12),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(9));

-- Location: LCFF_X78_Y45_N3
\inst4|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|dffs[8]~feeder_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(8));

-- Location: LCFF_X76_Y45_N25
\inst4|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(4),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(1));

-- Location: LCFF_X77_Y45_N1
\inst4|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(3),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(0));

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

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[1]~I\ : cycloneii_io
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
	padio => ww_x2(1),
	combout => \x2~combout\(1));

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

-- Location: LCCOMB_X78_Y45_N2
\inst4|dffs[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|dffs[8]~feeder_combout\ = \inst|dffs\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dffs\(11),
	combout => \inst4|dffs[8]~feeder_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[12]~I\ : cycloneii_io
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
	padio => ww_x2(12),
	combout => \x2~combout\(12));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr~I\ : cycloneii_io
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
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: CLKCTRL_G1
\clr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~clkctrl_outclk\);

-- Location: LCFF_X75_Y45_N31
\inst|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(12),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(12));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[9]~I\ : cycloneii_io
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
	padio => ww_x2(9),
	combout => \x2~combout\(9));

-- Location: LCFF_X75_Y45_N1
\inst|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(9),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(9));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[11]~I\ : cycloneii_io
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
	padio => ww_x2(11),
	combout => \x2~combout\(11));

-- Location: LCFF_X75_Y45_N9
\inst|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(11),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(11));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[8]~I\ : cycloneii_io
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
	padio => ww_x2(8),
	combout => \x2~combout\(8));

-- Location: LCFF_X75_Y45_N7
\inst|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(8),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(8));

-- Location: LCCOMB_X75_Y45_N8
\inst2|lpm_mult_component|mult_core|romout[2][6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\ = (\inst|dffs\(11) & ((\inst|dffs\(10)) # ((\inst|dffs\(9) & \inst|dffs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(10),
	datab => \inst|dffs\(9),
	datac => \inst|dffs\(11),
	datad => \inst|dffs\(8),
	combout => \inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\);

-- Location: LCCOMB_X75_Y45_N22
\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ = (\inst2|lpm_mult_component|mult_core|romout[2][5]~2_combout\ & (\inst|dffs\(12) $ (VCC))) # (!\inst2|lpm_mult_component|mult_core|romout[2][5]~2_combout\ & 
-- (\inst|dffs\(12) & VCC))
-- \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ = CARRY((\inst2|lpm_mult_component|mult_core|romout[2][5]~2_combout\ & \inst|dffs\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|romout[2][5]~2_combout\,
	datab => \inst|dffs\(12),
	datad => VCC,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\);

-- Location: LCCOMB_X75_Y45_N24
\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ = (\inst2|lpm_mult_component|mult_core|romout[3][2]~1_combout\ & ((\inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\ & 
-- (\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ & VCC)) # (!\inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)))) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[3][2]~1_combout\ & ((\inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\ & ((\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ = CARRY((\inst2|lpm_mult_component|mult_core|romout[3][2]~1_combout\ & (!\inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\ & 
-- !\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\inst2|lpm_mult_component|mult_core|romout[3][2]~1_combout\ & ((!\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|romout[3][2]~1_combout\,
	datab => \inst2|lpm_mult_component|mult_core|romout[2][6]~0_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X75_Y45_N26
\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ = (\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ & (\inst|dffs\(13) & (!\inst|dffs\(12) & VCC))) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ & ((((\inst|dffs\(13) & !\inst|dffs\(12))))))
-- \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\ = CARRY((\inst|dffs\(13) & (!\inst|dffs\(12) & !\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(13),
	datab => \inst|dffs\(12),
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\);

-- Location: LCCOMB_X75_Y45_N28
\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ = \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\ $ (((\inst|dffs\(13) & \inst|dffs\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(13),
	datad => \inst|dffs\(12),
	cin => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\,
	combout => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X75_Y45_N2
\inst2|lpm_mult_component|mult_core|romout[2][3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[2][3]~4_combout\ = (\inst|dffs\(9) & !\inst|dffs\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dffs\(9),
	datad => \inst|dffs\(8),
	combout => \inst2|lpm_mult_component|mult_core|romout[2][3]~4_combout\);

-- Location: LCCOMB_X75_Y45_N0
\inst2|lpm_mult_component|mult_core|romout[2][2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\ = \inst|dffs\(9) $ (\inst|dffs\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dffs\(9),
	datad => \inst|dffs\(8),
	combout => \inst2|lpm_mult_component|mult_core|romout[2][2]~12_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[4]~I\ : cycloneii_io
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
	padio => ww_x2(4),
	combout => \x2~combout\(4));

-- Location: LCFF_X75_Y45_N3
\inst|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(4),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(4));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[6]~I\ : cycloneii_io
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
	padio => ww_x2(6),
	combout => \x2~combout\(6));

-- Location: LCFF_X75_Y45_N15
\inst|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(6),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[7]~I\ : cycloneii_io
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
	padio => ww_x2(7),
	combout => \x2~combout\(7));

-- Location: LCCOMB_X75_Y45_N12
\inst|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dffs[7]~feeder_combout\ = \x2~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x2~combout\(7),
	combout => \inst|dffs[7]~feeder_combout\);

-- Location: LCFF_X75_Y45_N13
\inst|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|dffs[7]~feeder_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(7));

-- Location: LCCOMB_X75_Y45_N18
\inst2|lpm_mult_component|mult_core|romout[1][5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[1][5]~6_combout\ = (\inst|dffs\(6) & (\inst|dffs\(5) & ((!\inst|dffs\(7))))) # (!\inst|dffs\(6) & (\inst|dffs\(7) & ((!\inst|dffs\(4)) # (!\inst|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(5),
	datab => \inst|dffs\(4),
	datac => \inst|dffs\(6),
	datad => \inst|dffs\(7),
	combout => \inst2|lpm_mult_component|mult_core|romout[1][5]~6_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[0]~I\ : cycloneii_io
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
	padio => ww_x2(0),
	combout => \x2~combout\(0));

-- Location: LCFF_X76_Y45_N29
\inst|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(0),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(0));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[2]~I\ : cycloneii_io
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
	padio => ww_x2(2),
	combout => \x2~combout\(2));

-- Location: LCFF_X76_Y45_N31
\inst|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(2),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(2));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[3]~I\ : cycloneii_io
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
	padio => ww_x2(3),
	combout => \x2~combout\(3));

-- Location: LCFF_X76_Y45_N9
\inst|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(3),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(3));

-- Location: LCCOMB_X76_Y45_N30
\inst2|lpm_mult_component|mult_core|romout[0][6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\ = (\inst|dffs\(3) & ((\inst|dffs\(2)) # ((\inst|dffs\(1) & \inst|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(1),
	datab => \inst|dffs\(0),
	datac => \inst|dffs\(2),
	datad => \inst|dffs\(3),
	combout => \inst2|lpm_mult_component|mult_core|romout[0][6]~9_combout\);

-- Location: LCCOMB_X76_Y45_N16
\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ & ((\inst|dffs\(10) $ 
-- (\inst2|lpm_mult_component|mult_core|romout[2][3]~4_combout\)))) # (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ & (\inst|dffs\(10) $ (\inst2|lpm_mult_component|mult_core|romout[2][3]~4_combout\ $ (VCC))))
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ & (\inst|dffs\(10) $ 
-- (\inst2|lpm_mult_component|mult_core|romout[2][3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(10),
	datab => \inst2|lpm_mult_component|mult_core|romout[2][3]~4_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X76_Y45_N18
\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\inst2|lpm_mult_component|mult_core|romout[2][4]~3_combout\ & (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst2|lpm_mult_component|mult_core|romout[2][4]~3_combout\ & ((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (!\inst2|lpm_mult_component|mult_core|romout[2][4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|romout[2][4]~3_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X76_Y45_N22
\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & 
-- ((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X76_Y45_N24
\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = (\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & 
-- (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ $ (GND))) # (!\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ & VCC))
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & 
-- !\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X76_Y45_N26
\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ $ 
-- (\inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	cin => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[13]~I\ : cycloneii_io
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
	padio => ww_x2(13),
	combout => \x2~combout\(13));

-- Location: LCFF_X75_Y45_N17
\inst|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(13),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(13));

-- Location: LCFF_X78_Y45_N21
\inst4|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(13),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(10));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[10]~I\ : cycloneii_io
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
	padio => ww_x2(10),
	combout => \x2~combout\(10));

-- Location: LCFF_X75_Y45_N11
\inst|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(10),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(10));

-- Location: LCFF_X76_Y45_N7
\inst4|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(10),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(7));

-- Location: LCFF_X78_Y45_N27
\inst4|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(9),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(6));

-- Location: LCFF_X76_Y45_N13
\inst4|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(8),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(5));

-- Location: LCFF_X78_Y45_N23
\inst4|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(7),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(4));

-- Location: LCFF_X76_Y45_N11
\inst4|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(6),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(3));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[5]~I\ : cycloneii_io
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
	padio => ww_x2(5),
	combout => \x2~combout\(5));

-- Location: LCFF_X75_Y45_N5
\inst|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \x2~combout\(5),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dffs\(5));

-- Location: LCFF_X78_Y45_N25
\inst4|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|dffs\(5),
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dffs\(2));

-- Location: LCCOMB_X77_Y45_N0
\inst2|lpm_mult_component|mult_core|romout[0][4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\ = \inst|dffs\(3) $ (((\inst|dffs\(1) & (!\inst|dffs\(2) & \inst|dffs\(0))) # (!\inst|dffs\(1) & (\inst|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(1),
	datab => \inst|dffs\(2),
	datac => \inst|dffs\(3),
	datad => \inst|dffs\(0),
	combout => \inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\);

-- Location: LCCOMB_X77_Y45_N2
\inst2|lpm_mult_component|mult_core|romout[0][3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|lpm_mult_component|mult_core|romout[0][3]~14_combout\ = \inst|dffs\(2) $ (((\inst|dffs\(1) & !\inst|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(1),
	datac => \inst|dffs\(2),
	datad => \inst|dffs\(0),
	combout => \inst2|lpm_mult_component|mult_core|romout[0][3]~14_combout\);

-- Location: LCCOMB_X77_Y45_N4
\inst5|dffs[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[0]~14_combout\ = (\inst4|dffs\(0) & (\inst2|lpm_mult_component|mult_core|romout[0][3]~14_combout\ $ (VCC))) # (!\inst4|dffs\(0) & (\inst2|lpm_mult_component|mult_core|romout[0][3]~14_combout\ & VCC))
-- \inst5|dffs[0]~15\ = CARRY((\inst4|dffs\(0) & \inst2|lpm_mult_component|mult_core|romout[0][3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(0),
	datab => \inst2|lpm_mult_component|mult_core|romout[0][3]~14_combout\,
	datad => VCC,
	combout => \inst5|dffs[0]~14_combout\,
	cout => \inst5|dffs[0]~15\);

-- Location: LCCOMB_X77_Y45_N6
\inst5|dffs[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[1]~16_combout\ = (\inst4|dffs\(1) & ((\inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\ & (\inst5|dffs[0]~15\ & VCC)) # (!\inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\ & (!\inst5|dffs[0]~15\)))) # (!\inst4|dffs\(1) & 
-- ((\inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\ & (!\inst5|dffs[0]~15\)) # (!\inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\ & ((\inst5|dffs[0]~15\) # (GND)))))
-- \inst5|dffs[1]~17\ = CARRY((\inst4|dffs\(1) & (!\inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\ & !\inst5|dffs[0]~15\)) # (!\inst4|dffs\(1) & ((!\inst5|dffs[0]~15\) # (!\inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(1),
	datab => \inst2|lpm_mult_component|mult_core|romout[0][4]~13_combout\,
	datad => VCC,
	cin => \inst5|dffs[0]~15\,
	combout => \inst5|dffs[1]~16_combout\,
	cout => \inst5|dffs[1]~17\);

-- Location: LCCOMB_X77_Y45_N8
\inst5|dffs[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[2]~18_combout\ = ((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~0_combout\ $ (\inst4|dffs\(2) $ (!\inst5|dffs[1]~17\)))) # (GND)
-- \inst5|dffs[2]~19\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~0_combout\ & ((\inst4|dffs\(2)) # (!\inst5|dffs[1]~17\))) # (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~0_combout\ 
-- & (\inst4|dffs\(2) & !\inst5|dffs[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[1]~0_combout\,
	datab => \inst4|dffs\(2),
	datad => VCC,
	cin => \inst5|dffs[1]~17\,
	combout => \inst5|dffs[2]~18_combout\,
	cout => \inst5|dffs[2]~19\);

-- Location: LCCOMB_X77_Y45_N10
\inst5|dffs[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[3]~20_combout\ = (\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2_combout\ & ((\inst4|dffs\(3) & (\inst5|dffs[2]~19\ & VCC)) # (!\inst4|dffs\(3) & (!\inst5|dffs[2]~19\)))) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2_combout\ & ((\inst4|dffs\(3) & (!\inst5|dffs[2]~19\)) # (!\inst4|dffs\(3) & ((\inst5|dffs[2]~19\) # (GND)))))
-- \inst5|dffs[3]~21\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2_combout\ & (!\inst4|dffs\(3) & !\inst5|dffs[2]~19\)) # (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2_combout\ & 
-- ((!\inst5|dffs[2]~19\) # (!\inst4|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[2]~2_combout\,
	datab => \inst4|dffs\(3),
	datad => VCC,
	cin => \inst5|dffs[2]~19\,
	combout => \inst5|dffs[3]~20_combout\,
	cout => \inst5|dffs[3]~21\);

-- Location: LCCOMB_X77_Y45_N12
\inst5|dffs[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[4]~22_combout\ = ((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~4_combout\ $ (\inst4|dffs\(4) $ (!\inst5|dffs[3]~21\)))) # (GND)
-- \inst5|dffs[4]~23\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~4_combout\ & ((\inst4|dffs\(4)) # (!\inst5|dffs[3]~21\))) # (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~4_combout\ 
-- & (\inst4|dffs\(4) & !\inst5|dffs[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[3]~4_combout\,
	datab => \inst4|dffs\(4),
	datad => VCC,
	cin => \inst5|dffs[3]~21\,
	combout => \inst5|dffs[4]~22_combout\,
	cout => \inst5|dffs[4]~23\);

-- Location: LCCOMB_X77_Y45_N14
\inst5|dffs[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[5]~24_combout\ = (\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6_combout\ & ((\inst4|dffs\(5) & (\inst5|dffs[4]~23\ & VCC)) # (!\inst4|dffs\(5) & (!\inst5|dffs[4]~23\)))) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6_combout\ & ((\inst4|dffs\(5) & (!\inst5|dffs[4]~23\)) # (!\inst4|dffs\(5) & ((\inst5|dffs[4]~23\) # (GND)))))
-- \inst5|dffs[5]~25\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6_combout\ & (!\inst4|dffs\(5) & !\inst5|dffs[4]~23\)) # (!\inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6_combout\ & 
-- ((!\inst5|dffs[4]~23\) # (!\inst4|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~6_combout\,
	datab => \inst4|dffs\(5),
	datad => VCC,
	cin => \inst5|dffs[4]~23\,
	combout => \inst5|dffs[5]~24_combout\,
	cout => \inst5|dffs[5]~25\);

-- Location: LCCOMB_X77_Y45_N16
\inst5|dffs[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[6]~26_combout\ = ((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\inst4|dffs\(6) $ (!\inst5|dffs[5]~25\)))) # (GND)
-- \inst5|dffs[6]~27\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\inst4|dffs\(6)) # (!\inst5|dffs[5]~25\))) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & (\inst4|dffs\(6) & !\inst5|dffs[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \inst4|dffs\(6),
	datad => VCC,
	cin => \inst5|dffs[5]~25\,
	combout => \inst5|dffs[6]~26_combout\,
	cout => \inst5|dffs[6]~27\);

-- Location: LCCOMB_X77_Y45_N18
\inst5|dffs[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[7]~28_combout\ = (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\inst4|dffs\(7) & (\inst5|dffs[6]~27\ & VCC)) # (!\inst4|dffs\(7) & (!\inst5|dffs[6]~27\)))) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\inst4|dffs\(7) & (!\inst5|dffs[6]~27\)) # (!\inst4|dffs\(7) & ((\inst5|dffs[6]~27\) # (GND)))))
-- \inst5|dffs[7]~29\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\inst4|dffs\(7) & !\inst5|dffs[6]~27\)) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((!\inst5|dffs[6]~27\) # (!\inst4|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \inst4|dffs\(7),
	datad => VCC,
	cin => \inst5|dffs[6]~27\,
	combout => \inst5|dffs[7]~28_combout\,
	cout => \inst5|dffs[7]~29\);

-- Location: LCCOMB_X77_Y45_N20
\inst5|dffs[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[8]~30_combout\ = ((\inst4|dffs\(8) $ (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (!\inst5|dffs[7]~29\)))) # (GND)
-- \inst5|dffs[8]~31\ = CARRY((\inst4|dffs\(8) & ((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # (!\inst5|dffs[7]~29\))) # (!\inst4|dffs\(8) & 
-- (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & !\inst5|dffs[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(8),
	datab => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst5|dffs[7]~29\,
	combout => \inst5|dffs[8]~30_combout\,
	cout => \inst5|dffs[8]~31\);

-- Location: LCCOMB_X77_Y45_N22
\inst5|dffs[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[9]~32_combout\ = (\inst4|dffs\(9) & ((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\inst5|dffs[8]~31\ & VCC)) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\inst5|dffs[8]~31\)))) # (!\inst4|dffs\(9) & ((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\inst5|dffs[8]~31\)) # (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & ((\inst5|dffs[8]~31\) # (GND)))))
-- \inst5|dffs[9]~33\ = CARRY((\inst4|dffs\(9) & (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\inst5|dffs[8]~31\)) # (!\inst4|dffs\(9) & ((!\inst5|dffs[8]~31\) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dffs\(9),
	datab => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst5|dffs[8]~31\,
	combout => \inst5|dffs[9]~32_combout\,
	cout => \inst5|dffs[9]~33\);

-- Location: LCCOMB_X77_Y45_N24
\inst5|dffs[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[10]~34_combout\ = ((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (\inst4|dffs\(10) $ (!\inst5|dffs[9]~33\)))) # (GND)
-- \inst5|dffs[10]~35\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((\inst4|dffs\(10)) # (!\inst5|dffs[9]~33\))) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (\inst4|dffs\(10) & !\inst5|dffs[9]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \inst4|dffs\(10),
	datad => VCC,
	cin => \inst5|dffs[9]~33\,
	combout => \inst5|dffs[10]~34_combout\,
	cout => \inst5|dffs[10]~35\);

-- Location: LCCOMB_X77_Y45_N26
\inst5|dffs[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[11]~36_combout\ = (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\inst5|dffs[10]~35\)) # (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\inst5|dffs[10]~35\) # (GND)))
-- \inst5|dffs[11]~37\ = CARRY((!\inst5|dffs[10]~35\) # (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst5|dffs[10]~35\,
	combout => \inst5|dffs[11]~36_combout\,
	cout => \inst5|dffs[11]~37\);

-- Location: LCCOMB_X77_Y45_N28
\inst5|dffs[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[12]~38_combout\ = (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (\inst5|dffs[11]~37\ $ (GND))) # 
-- (!\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (!\inst5|dffs[11]~37\ & VCC))
-- \inst5|dffs[12]~39\ = CARRY((\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & !\inst5|dffs[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst5|dffs[11]~37\,
	combout => \inst5|dffs[12]~38_combout\,
	cout => \inst5|dffs[12]~39\);

-- Location: LCCOMB_X77_Y45_N30
\inst5|dffs[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[13]~40_combout\ = \inst5|dffs[12]~39\ $ (\inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cin => \inst5|dffs[12]~39\,
	combout => \inst5|dffs[13]~40_combout\);

-- Location: LCFF_X77_Y45_N31
\inst5|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[13]~40_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(13));

-- Location: LCFF_X77_Y45_N29
\inst5|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[12]~38_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(12));

-- Location: LCFF_X77_Y45_N27
\inst5|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[11]~36_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(11));

-- Location: LCFF_X77_Y45_N25
\inst5|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[10]~34_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(10));

-- Location: LCFF_X77_Y45_N23
\inst5|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[9]~32_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(9));

-- Location: LCFF_X77_Y45_N21
\inst5|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[8]~30_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(8));

-- Location: LCFF_X77_Y45_N19
\inst5|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[7]~28_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(7));

-- Location: LCFF_X77_Y45_N17
\inst5|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[6]~26_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(6));

-- Location: LCFF_X77_Y45_N15
\inst5|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[5]~24_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(5));

-- Location: LCFF_X77_Y45_N13
\inst5|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[4]~22_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(4));

-- Location: LCFF_X77_Y45_N9
\inst5|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[2]~18_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(2));

-- Location: LCFF_X77_Y45_N7
\inst5|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[1]~16_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(1));

-- Location: LCFF_X77_Y45_N5
\inst5|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[0]~14_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(0));

-- Location: LCCOMB_X78_Y45_N4
\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ = (\inst|dffs\(3) & (\inst5|dffs\(0) $ (VCC))) # (!\inst|dffs\(3) & (\inst5|dffs\(0) & VCC))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\ = CARRY((\inst|dffs\(3) & \inst5|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(3),
	datab => \inst5|dffs\(0),
	datad => VCC,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X78_Y45_N6
\inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ = (\inst|dffs\(4) & ((\inst5|dffs\(1) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\ & VCC)) # (!\inst5|dffs\(1) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\)))) 
-- # (!\inst|dffs\(4) & ((\inst5|dffs\(1) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!\inst5|dffs\(1) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\ = CARRY((\inst|dffs\(4) & (!\inst5|dffs\(1) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!\inst|dffs\(4) & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # 
-- (!\inst5|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(4),
	datab => \inst5|dffs\(1),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~1\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X78_Y45_N8
\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ = ((\inst|dffs\(5) $ (\inst5|dffs\(2) $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\ = CARRY((\inst|dffs\(5) & ((\inst5|dffs\(2)) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\))) # (!\inst|dffs\(5) & (\inst5|dffs\(2) & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(5),
	datab => \inst5|dffs\(2),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~3\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X78_Y45_N10
\inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ = (\inst5|dffs\(3) & ((\inst|dffs\(6) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\ & VCC)) # (!\inst|dffs\(6) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\)))) 
-- # (!\inst5|dffs\(3) & ((\inst|dffs\(6) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # (!\inst|dffs\(6) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\ = CARRY((\inst5|dffs\(3) & (!\inst|dffs\(6) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # (!\inst5|dffs\(3) & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # 
-- (!\inst|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dffs\(3),
	datab => \inst|dffs\(6),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~5\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X78_Y45_N12
\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ = ((\inst|dffs\(7) $ (\inst5|dffs\(4) $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\ = CARRY((\inst|dffs\(7) & ((\inst5|dffs\(4)) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\))) # (!\inst|dffs\(7) & (\inst5|dffs\(4) & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(7),
	datab => \inst5|dffs\(4),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~7\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\);

-- Location: LCCOMB_X78_Y45_N14
\inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ = (\inst|dffs\(8) & ((\inst5|dffs\(5) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\ & VCC)) # (!\inst5|dffs\(5) & 
-- (!\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\)))) # (!\inst|dffs\(8) & ((\inst5|dffs\(5) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\)) # (!\inst5|dffs\(5) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # 
-- (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\ = CARRY((\inst|dffs\(8) & (!\inst5|dffs\(5) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\)) # (!\inst|dffs\(8) & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # 
-- (!\inst5|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(8),
	datab => \inst5|dffs\(5),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~9\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\);

-- Location: LCCOMB_X78_Y45_N16
\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ = ((\inst|dffs\(9) $ (\inst5|dffs\(6) $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\ = CARRY((\inst|dffs\(9) & ((\inst5|dffs\(6)) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\))) # (!\inst|dffs\(9) & (\inst5|dffs\(6) & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(9),
	datab => \inst5|dffs\(6),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~11\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\);

-- Location: LCCOMB_X78_Y45_N18
\inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ = (\inst|dffs\(10) & ((\inst5|dffs\(7) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\ & VCC)) # (!\inst5|dffs\(7) & 
-- (!\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\)))) # (!\inst|dffs\(10) & ((\inst5|dffs\(7) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\)) # (!\inst5|dffs\(7) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\) # 
-- (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\ = CARRY((\inst|dffs\(10) & (!\inst5|dffs\(7) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\)) # (!\inst|dffs\(10) & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\) # 
-- (!\inst5|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(10),
	datab => \inst5|dffs\(7),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~13\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\);

-- Location: LCCOMB_X78_Y45_N20
\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ = ((\inst|dffs\(11) $ (\inst5|dffs\(8) $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\ = CARRY((\inst|dffs\(11) & ((\inst5|dffs\(8)) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\))) # (!\inst|dffs\(11) & (\inst5|dffs\(8) & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(11),
	datab => \inst5|dffs\(8),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~15\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\);

-- Location: LCCOMB_X78_Y45_N22
\inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ = (\inst|dffs\(12) & ((\inst5|dffs\(9) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\ & VCC)) # (!\inst5|dffs\(9) & 
-- (!\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\)))) # (!\inst|dffs\(12) & ((\inst5|dffs\(9) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\)) # (!\inst5|dffs\(9) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\) # 
-- (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\ = CARRY((\inst|dffs\(12) & (!\inst5|dffs\(9) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\)) # (!\inst|dffs\(12) & ((!\inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\) # 
-- (!\inst5|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(12),
	datab => \inst5|dffs\(9),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~17\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\);

-- Location: LCCOMB_X78_Y45_N24
\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ = ((\inst|dffs\(13) $ (\inst5|dffs\(10) $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\ = CARRY((\inst|dffs\(13) & ((\inst5|dffs\(10)) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\))) # (!\inst|dffs\(13) & (\inst5|dffs\(10) & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dffs\(13),
	datab => \inst5|dffs\(10),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~19\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\);

-- Location: LCCOMB_X78_Y45_N26
\inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ = (\inst5|dffs\(11) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\)) # (!\inst5|dffs\(11) & ((\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\) # (GND)))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\ = CARRY((!\inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\) # (!\inst5|dffs\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|dffs\(11),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~21\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\);

-- Location: LCCOMB_X78_Y45_N28
\inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ = (\inst5|dffs\(12) & (\inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\ $ (GND))) # (!\inst5|dffs\(12) & (!\inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\ & VCC))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\ = CARRY((\inst5|dffs\(12) & !\inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|dffs\(12),
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~23\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\);

-- Location: LCCOMB_X78_Y45_N30
\inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ = \inst5|dffs\(13) $ (\inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dffs\(13),
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~25\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\);

-- Location: LCFF_X77_Y45_N11
\inst5|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|dffs[3]~20_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(3));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[13]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(13));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[12]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(12));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[11]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(11));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[10]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(10));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[9]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(9));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[8]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(8));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[7]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(7));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[6]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(6));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[5]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(5));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[4]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(4));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[3]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(3));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[2]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(2));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[1]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(1));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2[0]~I\ : cycloneii_io
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
	datain => \inst7|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y2(0));
END structure;


