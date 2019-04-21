library ieee;--Jeter Gutierrez: October, 4, 2017|
use ieee.std_logic_1164.all;--Jeter Gutierrez: October, 4, 2017|
use ieee.numeric_std.all;--Jeter Gutierrez: October, 4, 2017|
use ieee.std_logic_unsigned.all;--Jeter Gutierrez: October, 4, 2017|
use IEEE.std_logic_arith.all;
use work.GUTIERREZ_OPT_CODE_PACKAGE.all;--Jeter Gutierrez: October, 4, 2017|
entity GUTIERREZ_INTEGRATION_PROJECT is --Jeter Gutierrez: October, 4, 2017|
port( CLOCK: in std_logic;--Jeter Gutierrez: October, 4, 2017|
		OPCODE: in std_logic_vector(3 downto 0);--Jeter Gutierrez: October, 4, 2017|
		X, Y: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		X_IS_LESS_THAN_Y,NEGATIVE,Z,OVERFLOW: out std_logic;
		RESULT: out std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		DISPLAY:out std_logic_vector(13 downto 0));
end GUTIERREZ_INTEGRATION_PROJECT;--Jeter Gutierrez: October, 4, 2017|
architecture DESIGN_INTEGRATION of GUTIERREZ_INTEGRATION_PROJECT is --Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_OPCODE is --Jeter Gutierrez: October, 4, 2017|
port( CLOCK: in std_logic;--Jeter Gutierrez: October, 4, 2017|
		OPCODE: in std_logic_vector(3 downto 0);--Jeter Gutierrez: October, 4, 2017|
		X, Y: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		X_IS_LESS_THAN_Y,NEGATIVE,Z,OVERFLOW_FINAL: out std_logic;
		RESULT: out std_logic_vector(5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_DEC_TO_HEX is
port(hex_digit: in std_logic_vector(3 downto 0);
a,b,c,d,e,f,g : out std_logic);
end component;
signal WORD_A: std_logic_vector (3 downto 0);
signal WORD_B: std_logic_vector (3 downto 0);
signal RESULT_temp:std_logic_vector (5 downto 0);
signal NEGATIVE_TEMP:std_logic;
begin
OPTCODE_RUNNING:GUTIERREZ_OPCODE port map(CLOCK,OPCODE,X,Y,X_IS_LESS_THAN_Y,NEGATIVE_TEMP,Z,OVERFLOW,RESULT=>RESULT_temp);
WORD_A(0)<=RESULT_temp(0);
WORD_A(1)<=RESULT_temp(1);
WORD_A(2)<=RESULT_temp(2);
WORD_A(3)<=RESULT_temp(3);
WORD_B(0)<=RESULT_temp(4);
WORD_B(1)<=RESULT_temp(5);
WORD_B(2)<='0';
WORD_B(3)<='0';
HEX_1:GUTIERREZ_DEC_TO_HEX port map(WORD_A,DISPLAY(0),DISPLAY(1),DISPLAY(2),DISPLAY(3),DISPLAY(4),DISPLAY(5),DISPLAY(6)); 
HEX_2:GUTIERREZ_DEC_TO_HEX port map(WORD_B,DISPLAY(7),DISPLAY(8),DISPLAY(9),DISPLAY(10),DISPLAY(11),DISPLAY(12),DISPLAY(13)); 
RESULT<=RESULT_temp;
NEGATIVE<=NOT NEGATIVE_TEMP;
end DESIGN_INTEGRATION;--Jeter Gutierrez: October, 4, 2017|
