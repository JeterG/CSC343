library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_arith.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_signed.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all; --Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_ADD_SUB_16_BITS is--Jeter Gutierrez September 24 ,2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(15 downto 0);--Jeter Gutierrez September 24 ,2017
			 S: out std_logic_vector (15 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end entity;--Jeter Gutierrez September 24 ,2017
architecture STRUCTURE_16 of GUTIERREZ_ADD_SUB_16_BITS is--Jeter Gutierrez September 24 ,2017
component GUTIERREZ_ADDER_16_BITS is--Jeter Gutierrez September 24 ,2017
	port ( cin: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(15 downto 0);--Jeter Gutierrez September 24 ,2017
			 sum_prime: out std_logic_vector (15 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end component;--Jeter Gutierrez September 24 ,2017
	signal COMPLEMENT: std_logic_vector(15 downto 0);--Jeter Gutierrez September 24 ,2017
	signal overflow2: std_logic;--Jeter Gutierrez September 24 ,2017
	signal SUM_TEMP: std_logic_vector(15 downto 0);--Jeter Gutierrez September 24 ,2017
	begin--Jeter Gutierrez September 24 ,2017
	SECOND:--Jeter Gutierrez September 24 ,2017
		for i in 0 to (15) generate--Jeter Gutierrez September 24 ,2017
			INVERSE: COMPLEMENT(i) <= Y(i) xor SUBTRACT;--Jeter Gutierrez September 24 ,2017
		end generate;--Jeter Gutierrez September 24 ,2017
	THIRD : GUTIERREZ_ADDER_16_BITS port map(SUBTRACT, X, COMPLEMENT, SUM_TEMP, Cout, Overflow2);--Jeter Gutierrez September 24 ,2017
	Overflow<= '1' WHEN (SUBTRACT='0' AND X(15)=COMPLEMENT(15) AND SUM_TEMP(15)/=X(15)) or--Jeter Gutierrez September 24 ,2017
                            (SUBTRACT='1' AND X(15)/=COMPLEMENT(15) AND SUM_TEMP(15)/=X(15)) ELSE '0';--Jeter Gutierrez September 24 ,2017
	S<=SUM_TEMP;--Jeter Gutierrez September 24 ,2017
end STRUCTURE_16;--Jeter Gutierrez September 24 ,2017