Library ieee;--JETER GUTIERREZ September 11 2017
use ieee.std_logic_1164.all;--JETER GUTIERREZ September 11 2017
--use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_FULL_ADDER_USING_GATES is--JETER GUTIERREZ September 11 2017
     port(a, b : in std_logic;--JETER GUTIERREZ September 11 2017
	       cin_prime : in std_logic;--JETER GUTIERREZ September 11 2017
			 sum : out std_logic;--JETER GUTIERREZ September 11 2017
			 cout_prime : out std_logic);--JETER GUTIERREZ September 11 2017
end GUTIERREZ_FULL_ADDER_USING_GATES;--JETER GUTIERREZ September 11 2017
architecture arch of GUTIERREZ_FULL_ADDER_USING_GATES is--JETER GUTIERREZ September 11 2017
begin--JETER GUTIERREZ September 11 2017
     cout_prime <= (a and b) or (cin_prime and a) or (cin_prime and b);--JETER GUTIERREZ September 11 2017
	  sum <=   a xor b xor cin_prime;--JETER GUTIERREZ September 11 2017
end arch;--JETER GUTIERREZ September 11 2017