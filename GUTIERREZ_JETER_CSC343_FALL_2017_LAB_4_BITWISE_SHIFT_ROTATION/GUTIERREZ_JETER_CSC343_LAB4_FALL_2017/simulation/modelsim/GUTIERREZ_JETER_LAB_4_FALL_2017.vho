-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "10/04/2017 12:25:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GUTIERREZ_OPCODE IS
    PORT (
	CLOCK : IN std_logic;
	OPCODE : IN std_logic_vector(3 DOWNTO 0);
	X : IN std_logic_vector(5 DOWNTO 0);
	Y : IN std_logic_vector(5 DOWNTO 0);
	X_IS_LESS_THAN_Y : OUT std_logic;
	RESULT : OUT std_logic_vector(5 DOWNTO 0)
	);
END GUTIERREZ_OPCODE;

-- Design Ports Information
-- X_IS_LESS_THAN_Y	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GUTIERREZ_OPCODE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_OPCODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_X_IS_LESS_THAN_Y : std_logic;
SIGNAL ww_RESULT : std_logic_vector(5 DOWNTO 0);
SIGNAL \X_IS_LESS_THAN_Y~output_o\ : std_logic;
SIGNAL \RESULT[0]~output_o\ : std_logic;
SIGNAL \RESULT[1]~output_o\ : std_logic;
SIGNAL \RESULT[2]~output_o\ : std_logic;
SIGNAL \RESULT[3]~output_o\ : std_logic;
SIGNAL \RESULT[4]~output_o\ : std_logic;
SIGNAL \RESULT[5]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \Y[5]~input_o\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \OPCODE[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \X_IS_LESS_THAN_Y~0_combout\ : std_logic;
SIGNAL \X_IS_LESS_THAN_Y~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \RESULT[0]~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \RESULT[0]~reg0_q\ : std_logic;
SIGNAL \RESULT[1]~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \RESULT[1]~reg0_q\ : std_logic;
SIGNAL \RESULT[2]~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \RESULT[2]~reg0_q\ : std_logic;
SIGNAL \RESULT[3]~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \RESULT[3]~reg0_q\ : std_logic;
SIGNAL \RESULT[4]~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \RESULT[4]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \RESULT[5]~5_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \RESULT[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_OPCODE[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_OPCODE[3]~input_o\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_OPCODE <= OPCODE;
ww_X <= X;
ww_Y <= Y;
X_IS_LESS_THAN_Y <= ww_X_IS_LESS_THAN_Y;
RESULT <= ww_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OPCODE[2]~input_o\ <= NOT \OPCODE[2]~input_o\;
\ALT_INV_OPCODE[3]~input_o\ <= NOT \OPCODE[3]~input_o\;

-- Location: IOOBUF_X72_Y73_N9
\X_IS_LESS_THAN_Y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X_IS_LESS_THAN_Y~reg0_q\,
	devoe => ww_devoe,
	o => \X_IS_LESS_THAN_Y~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\RESULT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RESULT[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\RESULT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RESULT[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\RESULT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RESULT[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\RESULT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \RESULT[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\RESULT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RESULT[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\RESULT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \RESULT[5]~output_o\);

-- Location: IOIBUF_X115_Y14_N8
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\Y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(5),
	o => \Y[5]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\X[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\X[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\Y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LCCOMB_X114_Y13_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\Y[0]~input_o\ & !\X[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X114_Y13_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\X[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\Y[1]~input_o\))) # (!\X[1]~input_o\ & (!\Y[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \Y[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X114_Y13_N6
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Y[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\X[2]~input_o\))) # (!\Y[2]~input_o\ & (!\X[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \X[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X114_Y13_N8
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\X[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\Y[3]~input_o\))) # (!\X[3]~input_o\ & (!\Y[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X114_Y13_N10
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\X[4]~input_o\ & (\Y[4]~input_o\ & !\LessThan0~7_cout\)) # (!\X[4]~input_o\ & ((\Y[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \Y[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X114_Y13_N12
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\Y[5]~input_o\ & ((\LessThan0~9_cout\) # (!\X[5]~input_o\))) # (!\Y[5]~input_o\ & (\LessThan0~9_cout\ & !\X[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Y[5]~input_o\,
	datad => \X[5]~input_o\,
	cin => \LessThan0~9_cout\,
	combout => \LessThan0~10_combout\);

-- Location: IOIBUF_X115_Y9_N22
\OPCODE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(0),
	o => \OPCODE[0]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\OPCODE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(1),
	o => \OPCODE[1]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\OPCODE[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(2),
	o => \OPCODE[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\OPCODE[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(3),
	o => \OPCODE[3]~input_o\);

-- Location: LCCOMB_X114_Y14_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & (!\OPCODE[2]~input_o\ & \OPCODE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[2]~input_o\,
	datad => \OPCODE[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X114_Y13_N20
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\Y[0]~input_o\ & \X[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X114_Y13_N22
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\X[1]~input_o\ & (\Y[1]~input_o\ & !\LessThan1~1_cout\)) # (!\X[1]~input_o\ & ((\Y[1]~input_o\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \Y[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X114_Y13_N24
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\Y[2]~input_o\ & (\X[2]~input_o\ & !\LessThan1~3_cout\)) # (!\Y[2]~input_o\ & ((\X[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \X[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X114_Y13_N26
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\X[3]~input_o\ & (\Y[3]~input_o\ & !\LessThan1~5_cout\)) # (!\X[3]~input_o\ & ((\Y[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X114_Y13_N28
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\X[4]~input_o\ & ((!\LessThan1~7_cout\) # (!\Y[4]~input_o\))) # (!\X[4]~input_o\ & (!\Y[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \Y[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X114_Y13_N30
\LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (\Y[5]~input_o\ & (\LessThan1~9_cout\ & \X[5]~input_o\)) # (!\Y[5]~input_o\ & ((\LessThan1~9_cout\) # (\X[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Y[5]~input_o\,
	datad => \X[5]~input_o\,
	cin => \LessThan1~9_cout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X113_Y14_N20
\X_IS_LESS_THAN_Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \X_IS_LESS_THAN_Y~0_combout\ = (\Mux6~0_combout\ & (!\LessThan1~10_combout\ & ((\LessThan0~10_combout\) # (\X_IS_LESS_THAN_Y~reg0_q\)))) # (!\Mux6~0_combout\ & (((\X_IS_LESS_THAN_Y~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Mux6~0_combout\,
	datac => \X_IS_LESS_THAN_Y~reg0_q\,
	datad => \LessThan1~10_combout\,
	combout => \X_IS_LESS_THAN_Y~0_combout\);

-- Location: FF_X113_Y14_N21
\X_IS_LESS_THAN_Y~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \X_IS_LESS_THAN_Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X_IS_LESS_THAN_Y~reg0_q\);

-- Location: LCCOMB_X114_Y14_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\OPCODE[1]~input_o\ & \X[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPCODE[1]~input_o\,
	datad => \X[5]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X114_Y14_N28
\RESULT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT[0]~0_combout\ = (\OPCODE[0]~input_o\ & ((\X[1]~input_o\))) # (!\OPCODE[0]~input_o\ & (\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \Mux5~0_combout\,
	datad => \X[1]~input_o\,
	combout => \RESULT[0]~0_combout\);

-- Location: LCCOMB_X114_Y14_N0
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\OPCODE[1]~input_o\ & (\X[0]~input_o\ $ (((\OPCODE[0]~input_o\) # (\Y[0]~input_o\))))) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\ & ((\Y[0]~input_o\) # (\X[0]~input_o\))) # (!\OPCODE[0]~input_o\ & (\Y[0]~input_o\ & 
-- \X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \Y[0]~input_o\,
	datad => \X[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: FF_X114_Y14_N29
\RESULT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \RESULT[0]~0_combout\,
	asdata => \Mux5~1_combout\,
	sload => \ALT_INV_OPCODE[2]~input_o\,
	ena => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RESULT[0]~reg0_q\);

-- Location: LCCOMB_X114_Y14_N6
\RESULT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT[1]~1_combout\ = (\OPCODE[0]~input_o\ & (\X[2]~input_o\)) # (!\OPCODE[0]~input_o\ & ((\X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \X[2]~input_o\,
	datad => \X[0]~input_o\,
	combout => \RESULT[1]~1_combout\);

-- Location: LCCOMB_X114_Y14_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\X[1]~input_o\ & (\OPCODE[1]~input_o\ $ (((\OPCODE[0]~input_o\) # (\Y[1]~input_o\))))) # (!\X[1]~input_o\ & ((\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (\Y[1]~input_o\))) # (!\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\ & 
-- \Y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: FF_X114_Y14_N7
\RESULT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \RESULT[1]~1_combout\,
	asdata => \Mux4~0_combout\,
	sload => \ALT_INV_OPCODE[2]~input_o\,
	ena => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RESULT[1]~reg0_q\);

-- Location: LCCOMB_X114_Y14_N20
\RESULT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT[2]~2_combout\ = (\OPCODE[0]~input_o\ & (\X[3]~input_o\)) # (!\OPCODE[0]~input_o\ & ((\X[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \RESULT[2]~2_combout\);

-- Location: LCCOMB_X114_Y14_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\OPCODE[1]~input_o\ & (\X[2]~input_o\ $ (((\OPCODE[0]~input_o\) # (\Y[2]~input_o\))))) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\ & ((\Y[2]~input_o\) # (\X[2]~input_o\))) # (!\OPCODE[0]~input_o\ & (\Y[2]~input_o\ & 
-- \X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \X[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: FF_X114_Y14_N21
\RESULT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \RESULT[2]~2_combout\,
	asdata => \Mux3~0_combout\,
	sload => \ALT_INV_OPCODE[2]~input_o\,
	ena => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RESULT[2]~reg0_q\);

-- Location: LCCOMB_X114_Y14_N30
\RESULT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT[3]~3_combout\ = (\OPCODE[0]~input_o\ & ((\X[4]~input_o\))) # (!\OPCODE[0]~input_o\ & (\X[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \X[2]~input_o\,
	datad => \X[4]~input_o\,
	combout => \RESULT[3]~3_combout\);

-- Location: LCCOMB_X114_Y14_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\X[3]~input_o\ & (\OPCODE[1]~input_o\ $ (((\OPCODE[0]~input_o\) # (\Y[3]~input_o\))))) # (!\X[3]~input_o\ & ((\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (\Y[3]~input_o\))) # (!\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\ & 
-- \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X114_Y14_N31
\RESULT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \RESULT[3]~3_combout\,
	asdata => \Mux2~0_combout\,
	sload => \ALT_INV_OPCODE[2]~input_o\,
	ena => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RESULT[3]~reg0_q\);

-- Location: LCCOMB_X114_Y14_N24
\RESULT[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT[4]~4_combout\ = (\OPCODE[0]~input_o\ & ((\X[5]~input_o\))) # (!\OPCODE[0]~input_o\ & (\X[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \X[3]~input_o\,
	datad => \X[5]~input_o\,
	combout => \RESULT[4]~4_combout\);

-- Location: LCCOMB_X114_Y14_N16
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\OPCODE[1]~input_o\ & (\X[4]~input_o\ $ (((\OPCODE[0]~input_o\) # (\Y[4]~input_o\))))) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\ & ((\Y[4]~input_o\) # (\X[4]~input_o\))) # (!\OPCODE[0]~input_o\ & (\Y[4]~input_o\ & 
-- \X[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \Y[4]~input_o\,
	datad => \X[4]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X114_Y14_N25
\RESULT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \RESULT[4]~4_combout\,
	asdata => \Mux1~0_combout\,
	sload => \ALT_INV_OPCODE[2]~input_o\,
	ena => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RESULT[4]~reg0_q\);

-- Location: LCCOMB_X114_Y14_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\OPCODE[1]~input_o\ & \X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPCODE[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y14_N26
\RESULT[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT[5]~5_combout\ = (\OPCODE[0]~input_o\ & (\Mux0~0_combout\)) # (!\OPCODE[0]~input_o\ & ((\X[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \Mux0~0_combout\,
	datad => \X[4]~input_o\,
	combout => \RESULT[5]~5_combout\);

-- Location: LCCOMB_X114_Y14_N8
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\OPCODE[1]~input_o\ & (\X[5]~input_o\ $ (((\OPCODE[0]~input_o\) # (\Y[5]~input_o\))))) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\ & ((\Y[5]~input_o\) # (\X[5]~input_o\))) # (!\OPCODE[0]~input_o\ & (\Y[5]~input_o\ & 
-- \X[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \Y[5]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \X[5]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: FF_X114_Y14_N27
\RESULT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \RESULT[5]~5_combout\,
	asdata => \Mux0~1_combout\,
	sload => \ALT_INV_OPCODE[2]~input_o\,
	ena => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RESULT[5]~reg0_q\);

ww_X_IS_LESS_THAN_Y <= \X_IS_LESS_THAN_Y~output_o\;

ww_RESULT(0) <= \RESULT[0]~output_o\;

ww_RESULT(1) <= \RESULT[1]~output_o\;

ww_RESULT(2) <= \RESULT[2]~output_o\;

ww_RESULT(3) <= \RESULT[3]~output_o\;

ww_RESULT(4) <= \RESULT[4]~output_o\;

ww_RESULT(5) <= \RESULT[5]~output_o\;
END structure;


