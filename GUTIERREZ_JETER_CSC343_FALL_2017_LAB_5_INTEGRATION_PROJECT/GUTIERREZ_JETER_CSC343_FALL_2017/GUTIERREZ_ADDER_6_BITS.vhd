library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_arith.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_signed.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_ADDER_6_BITS is--Jeter Gutierrez September 24 ,2017
	port ( cin: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(5 downto 0);--Jeter Gutierrez September 24 ,2017
			 sum_prime: out std_logic_vector (5 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end entity;--Jeter Gutierrez September 24 ,2017

architecture DESIGN_6 of GUTIERREZ_ADDER_6_BITS is --Jeter Gutierrez September 24 ,2017
	component GUTIERREZ_FULL_ADDER_USING_GATES--Jeter Gutierrez September 24 ,2017
		Port ( a,b,cin_prime : in  STD_LOGIC;--Jeter Gutierrez September 24 ,2017
             sum,cout_prime : out  STD_LOGIC);--Jeter Gutierrez September 24 ,2017
	end component;--Jeter Gutierrez September 24 ,2017

	signal C: std_logic_vector(5 downto 0);--Jeter Gutierrez September 24 ,2017
	signal sum_temp: std_logic_vector(5 downto 0);--Jeter Gutierrez September 24 ,2017
	begin--Jeter Gutierrez September 24 ,2017
		FIRST: GUTIERREZ_FULL_ADDER_USING_GATES port map  (cin, X(0),Y(0),sum_temp(0),C(0));--Jeter Gutierrez September 24 ,2017
		SECOND: Cout<= C(5);--Jeter Gutierrez September 24 ,2017
	THIRD:--Jeter Gutierrez September 24 ,2017
		for i in 1 to (5) generate--Jeter Gutierrez September 24 ,2017
			FOURTH: GUTIERREZ_FULL_ADDER_USING_GATES port map  (C(i-1), X(i),Y(i),sum_temp(i),C(i));--Jeter Gutierrez September 24 ,2017
		end generate;--Jeter Gutierrez September 24 ,2017
		FIFTH: Overflow<= '1' WHEN ((X(5)=Y(5) AND sum_temp(5)/=X(5))) ELSE '0';--Jeter Gutierrez September 24 ,2017
		SIXTH: sum_prime<=sum_temp;--Jeter Gutierrez September 24 ,2017
end DESIGN_6;--Jeter Gutierrez September 24 ,2017