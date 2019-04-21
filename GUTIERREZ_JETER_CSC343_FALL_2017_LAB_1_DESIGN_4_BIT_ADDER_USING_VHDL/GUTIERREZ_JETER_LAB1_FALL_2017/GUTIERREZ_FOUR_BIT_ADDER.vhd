library ieee;--JETER GUTIERREZ September 11 2017
use ieee.std_logic_1164.all;--JETER GUTIERREZ September 11 2017
entity GUTIERREZ_FOUR_BIT_ADDER is--JETER GUTIERREZ September 11 2017
port(a, b : in std_logic_vector(3 downto 0);--JETER GUTIERREZ September 11 2017
cout : out std_logic;--JETER GUTIERREZ September 11 2017
sum : out std_logic_vector(3 downto 0));--JETER GUTIERREZ September 11 2017
end GUTIERREZ_FOUR_BIT_ADDER;--JETER GUTIERREZ September 11 2017
architecture arch of GUTIERREZ_FOUR_BIT_ADDER is--JETER GUTIERREZ September 11 2017
signal c: std_logic_vector(4 downto 0);--JETER GUTIERREZ September 11 2017
component GUTIERREZ_FULL_ADDER_USING_GATES is--JETER GUTIERREZ September 11 2017
port(a, b, cin: in std_logic; --JETER GUTIERREZ September 11 2017
cout : out std_logic ;--JETER GUTIERREZ September 11 2017
sum : out std_logic );--JETER GUTIERREZ September 11 2017
end component;--JETER GUTIERREZ September 11 2017
begin--JETER GUTIERREZ September 11 2017
c(0) <= '0';--JETER GUTIERREZ September 11 2017
GUTIERREZ_FULL_ADDER0 : GUTIERREZ_FULL_ADDER_USING_GATES port map(a(0), b(0), c(0), c(1), sum(0));--JETER GUTIERREZ September 11 2017
GUTIERREZ_FULL_ADDER1 : GUTIERREZ_FULL_ADDER_USING_GATES port map( a(1), b(1), c(1), c(2), sum(1));--JETER GUTIERREZ September 11 2017
GUTIERREZ_FULL_ADDER2 : GUTIERREZ_FULL_ADDER_USING_GATES port map( a(2), b(2), c(2), c(3), sum(2) );--JETER GUTIERREZ September 11 2017
GUTIERREZ_FULL_ADDER3 : GUTIERREZ_FULL_ADDER_USING_GATES port map( a(3),b(3),c(3),cout,sum(3) );--JETER GUTIERREZ September 11 2017
end arch;--JETER GUTIERREZ September 11 2017