library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_arith.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_signed.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all; --Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_ADD_SUB_8_BITS is--Jeter Gutierrez September 24 ,2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(7 downto 0);--Jeter Gutierrez September 24 ,2017
			 S: out std_logic_vector (7 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end entity;--Jeter Gutierrez September 24 ,2017
architecture STRUCTURE_8 of GUTIERREZ_ADD_SUB_8_BITS is--Jeter Gutierrez September 24 ,2017
component GUTIERREZ_ADDER_8_BITS is--Jeter Gutierrez September 24 ,2017
	port ( cin: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(7 downto 0);--Jeter Gutierrez September 24 ,2017
			 sum_prime: out std_logic_vector (7 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end component;--Jeter Gutierrez September 24 ,2017
	signal COMPLEMENT: std_logic_vector(7 downto 0);--Jeter Gutierrez September 24 ,2017
	signal overflow2: std_logic;--Jeter Gutierrez September 24 ,2017
	signal SUM_TEMP: std_logic_vector(7 downto 0);--Jeter Gutierrez September 24 ,2017
	begin--Jeter Gutierrez September 24 ,2017
	SECOND:--Jeter Gutierrez September 24 ,2017
		for i in 0 to (7) generate--Jeter Gutierrez September 24 ,2017
			INVERSE: COMPLEMENT(i) <= Y(i) xor SUBTRACT;--Jeter Gutierrez September 24 ,2017
		end generate;--Jeter Gutierrez September 24 ,2017
	THIRD : GUTIERREZ_ADDER_8_BITS port map(SUBTRACT, X, COMPLEMENT, SUM_TEMP, Cout, Overflow2);--Jeter Gutierrez September 24 ,2017
	Overflow<= '1' WHEN (SUBTRACT='0' AND X(7)=COMPLEMENT(7) AND SUM_TEMP(7)/=X(7)) or--Jeter Gutierrez September 24 ,2017
                            (SUBTRACT='1' AND X(7)/=COMPLEMENT(7) AND SUM_TEMP(7)/=X(7)) ELSE '0';--Jeter Gutierrez September 24 ,2017
	S<=SUM_TEMP;--Jeter Gutierrez September 24 ,2017
end STRUCTURE_8;--Jeter Gutierrez September 24 ,2017