library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_arith.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_signed.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_8_BIT_SEARCH is--Jeter Gutierrez September 24 ,2017
	port(X :in std_logic_vector (7 downto 0);
			Position: out std_logic_vector(9 downto 0));--Jeter Gutierrez September 24 ,2017
end GUTIERREZ_8_BIT_SEARCH;--Jeter Gutierrez September 24 ,2017
architecture DESIGN_SEARCH_8 of GUTIERREZ_8_BIT_SEARCH is --Jeter Gutierrez September 24 ,2017
type MEMORY is array (0 to 9) of std_logic_vector(7 downto 0); 
component GUTIERREZ_COMPARE_8_BITS_ADVANCE is --Jeter Gutierrez September 24 ,2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(7 downto 0);--Jeter Gutierrez September 24 ,2017
			 S: out std_logic_vector (7 downto 0);--Jeter Gutierrez September 24 ,2017
			 NEGATIVE: out std_logic;--Jeter Gutierrez September 24 ,2017
			 Z: out std_logic;--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end component;--Jeter Gutierrez September 24 ,2017
signal STORED_WORDS : MEMORY :=--Jeter Gutierrez September 24 ,2017
("00000000",--<= STORED_WORDS(0);--Jeter Gutierrez September 24 ,2017
"00000001",--<= STORED_WORDS(1);--Jeter Gutierrez September 24 ,2017
"00000010",--<= STORED_WORDS(2);--Jeter Gutierrez September 24 ,2017
"00000011",--<= STORED_WORDS(3);--Jeter Gutierrez September 24 ,2017
"00000100",--<= STORED_WORDS(4);--Jeter Gutierrez September 24 ,2017
"00000101",--<= STORED_WORDS(5);--Jeter Gutierrez September 24 ,2017
"00000110",--<= STORED_WORDS(6);--Jeter Gutierrez September 24 ,2017
"00000111",--<= STORED_WORDS(7);--Jeter Gutierrez September 24 ,2017
"00001000",--<= STORED_WORDS(8);--Jeter Gutierrez September 24 ,2017
"00001001");--<= STORED_WORDS(9);--Jeter Gutierrez September 24 ,2017
signal S_TEMP :STD_LOGIC_VECTOR(7 DOWNTO 0);--Jeter Gutierrez September 24 ,2017
signal SUBTRACT_TEMP,NEGATIVE_TEMP,Z_TEMP,COUT_TEMP,OVERFLOW_TEMP :STD_LOGIC;--Jeter Gutierrez September 24 ,2017
begin--Jeter Gutierrez September 24 ,2017
SUBTRACT_TEMP<= '1';--Jeter Gutierrez September 24 ,2017
FIRST: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(0),S_TEMP,NEGATIVE_TEMP,POSITION(0),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
SECOND: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(1),S_TEMP,NEGATIVE_TEMP,POSITION(1),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
THIRD: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(2),S_TEMP,NEGATIVE_TEMP,POSITION(2),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
FOURTH: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(3),S_TEMP,NEGATIVE_TEMP,POSITION(3),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
FIFTH: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(4),S_TEMP,NEGATIVE_TEMP,POSITION(4),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
SIXTH: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(5),S_TEMP,NEGATIVE_TEMP,POSITION(5),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
SEVENTH: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(6),S_TEMP,NEGATIVE_TEMP,POSITION(6),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
EIGHT: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(7),S_TEMP,NEGATIVE_TEMP,POSITION(7),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
NINTH: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(8),S_TEMP,NEGATIVE_TEMP,POSITION(8),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
TENTH: GUTIERREZ_COMPARE_8_BITS_ADVANCE port map (SUBTRACT_TEMP,X,STORED_WORDS(9),S_TEMP,NEGATIVE_TEMP,POSITION(9),Overflow_TEMP);--Jeter Gutierrez September 24 ,2017
end DESIGN_SEARCH_8;--Jeter Gutierrez September 24 ,2017
