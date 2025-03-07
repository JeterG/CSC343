-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/10/2017 06:53:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          GUTIERREZ_HALF_ADDER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY GUTIERREZ_HALF_ADDER_vhd_vec_tst IS
END GUTIERREZ_HALF_ADDER_vhd_vec_tst;
ARCHITECTURE GUTIERREZ_HALF_ADDER_arch OF GUTIERREZ_HALF_ADDER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL CARRY : STD_LOGIC;
SIGNAL SUM : STD_LOGIC;
COMPONENT GUTIERREZ_HALF_ADDER
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	CARRY : OUT STD_LOGIC;
	SUM : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : GUTIERREZ_HALF_ADDER
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CARRY => CARRY,
	SUM => SUM
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
WAIT;
END PROCESS t_prcs_B;
END GUTIERREZ_HALF_ADDER_arch;
