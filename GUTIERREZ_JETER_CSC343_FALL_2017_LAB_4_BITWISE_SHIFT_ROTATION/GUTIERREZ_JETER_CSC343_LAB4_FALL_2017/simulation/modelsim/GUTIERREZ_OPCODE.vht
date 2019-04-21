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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/04/2017 12:01:07"
                                                            
-- Vhdl Test Bench template for design  :  GUTIERREZ_OPCODE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY GUTIERREZ_OPCODE_vhd_tst IS
END GUTIERREZ_OPCODE_vhd_tst;
ARCHITECTURE GUTIERREZ_OPCODE_arch OF GUTIERREZ_OPCODE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL OPCODE : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RESULT : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL X_IS_LESS_THAN_Y : STD_LOGIC;
SIGNAL Y : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT GUTIERREZ_OPCODE
	PORT (
	CLOCK : IN STD_LOGIC;
	OPCODE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RESULT : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	X : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	X_IS_LESS_THAN_Y : OUT STD_LOGIC;
	Y : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : GUTIERREZ_OPCODE
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	OPCODE => OPCODE,
	RESULT => RESULT,
	X => X,
	X_IS_LESS_THAN_Y => X_IS_LESS_THAN_Y,
	Y => Y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END GUTIERREZ_OPCODE_arch;
