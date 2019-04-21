library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_arith.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_signed.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_ADD_SUB_4_BITS is--Jeter Gutierrez September 24 ,2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
			 S: out std_logic_vector (3 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end entity;--Jeter Gutierrez September 24 ,2017
architecture STRUCTURE of GUTIERREZ_ADD_SUB_4_BITS is --Jeter Gutierrez September 24 ,2017
component GUTIERREZ_ADDER_4_BITS is --Jeter Gutierrez September 24 ,2017
	port ( cin: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
			 sum_prime: out std_logic_vector (3 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end component;--Jeter Gutierrez September 24 ,2017
	signal COMPLEMENT: std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
	begin--Jeter Gutierrez September 24 ,2017
	SECOND:--Jeter Gutierrez September 24 ,2017
		for i in 0 to (3) generate--Jeter Gutierrez September 24 ,2017
			INVERSE: COMPLEMENT(i) <= Y(i) xor SUBTRACT;--Jeter Gutierrez September 24 ,2017
		end generate;--Jeter Gutierrez September 24 ,2017
	THIRD : GUTIERREZ_ADDER_4_BITS port map(SUBTRACT, X, COMPLEMENT, S, Cout, Overflow);--Jeter Gutierrez September 24 ,2017
end STRUCTURE;--Jeter Gutierrez September 24 ,2017