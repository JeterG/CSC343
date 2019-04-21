library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_arith.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_signed.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_COMPARE_4_BITS_ADVANCE is --Jeter Gutierrez September 24 ,2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
			 S: out std_logic_vector (3 downto 0);--Jeter Gutierrez September 24 ,2017
			 NEGATIVE: out std_logic;--Jeter Gutierrez September 24 ,2017
			 Z: out std_logic;--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end entity;--Jeter Gutierrez September 24 ,2017
architecture IDEA of GUTIERREZ_COMPARE_4_BITS_ADVANCE is --Jeter Gutierrez September 24 ,2017
component GUTIERREZ_ADDER_4_BITS is --Jeter Gutierrez September 24 ,2017
	port ( cin: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
			 sum_prime: out std_logic_vector (3 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end component;--Jeter Gutierrez September 24 ,2017
	signal COMPLIMENT: std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
	signal SUM_TEMP: std_logic_vector (3 downto 0);--Jeter Gutierrez September 24 ,2017
	begin--Jeter Gutierrez September 24 ,2017
	FIRST:--Jeter Gutierrez September 24 ,2017
		for i in 0 to (3) generate--Jeter Gutierrez September 24 ,2017
			INVERSE: COMPLIMENT(i) <= Y(i) xor SUBTRACT;--Jeter Gutierrez September 24 ,2017
		end generate;--Jeter Gutierrez September 24 ,2017
	SECOND : GUTIERREZ_ADDER_4_BITS port map(SUBTRACT, X, COMPLIMENT, SUM_TEMP, Cout, Overflow);--Jeter Gutierrez September 24 ,2017
	THIRD:--Jeter Gutierrez September 24 ,2017
	NEGATIVE<=SUM_TEMP(3);--Jeter Gutierrez September 24 ,2017
		S<=SUM_TEMP;--Jeter Gutierrez September 24 ,2017
		Z<=(((SUM_TEMP(0) nor SUM_TEMP(1)) and (SUM_TEMP(2) nor SUM_TEMP(3))));		--Jeter Gutierrez September 24 ,2017						
end IDEA;--Jeter Gutierrez September 24 ,2017