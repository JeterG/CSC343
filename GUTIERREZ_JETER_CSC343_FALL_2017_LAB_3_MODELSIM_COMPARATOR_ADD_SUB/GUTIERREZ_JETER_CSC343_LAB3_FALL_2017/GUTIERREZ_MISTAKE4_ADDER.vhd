library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_arith.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_signed.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_MISTAKE4_ADDER is--Jeter Gutierrez September 24 ,2017
	port ( cin: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
			 sum_prime: out std_logic_vector (3 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end entity;--Jeter Gutierrez September 24 ,2017
--Jeter Gutierrez September 24 ,2017
architecture DESIGN of GUTIERREZ_MISTAKE4_ADDER is --Jeter Gutierrez September 24 ,2017
	component GUTIERREZ_FULL_ADDER_USING_GATES--Jeter Gutierrez September 24 ,2017
		Port ( a,b,cin_prime : in  STD_LOGIC;--Jeter Gutierrez September 24 ,2017
             sum,cout_prime : out  STD_LOGIC);--Jeter Gutierrez September 24 ,2017
	end component;--Jeter Gutierrez September 24 ,2017
	--Jeter Gutierrez September 24 ,2017
	signal C: std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
	begin--Jeter Gutierrez September 24 ,2017
		FIRST: GUTIERREZ_FULL_ADDER_USING_GATES port map  (cin, X(0),Y(0),sum_prime(0),C(0));--Jeter Gutierrez September 24 ,2017
		SECOND: Cout<= C(3);--Jeter Gutierrez September 24 ,2017
		THIRD: Overflow<= C(3) xor C(1);--Jeter Gutierrez September 24 ,2017
	FOURTH:--Jeter Gutierrez September 24 ,2017
		for i in 1 to (3) generate--Jeter Gutierrez September 24 ,2017
			FIFTH: GUTIERREZ_FULL_ADDER_USING_GATES port map  (C(i-1), X(i),Y(i),C(i),sum_prime(i));--Jeter Gutierrez September 24 ,2017
		end generate;--Jeter Gutierrez September 24 ,2017
end DESIGN;--Jeter Gutierrez September 24 ,2017