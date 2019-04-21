library IEEE;--Jeter Gutierrez September 13 ,2017
use work.GUTIERREZ_ADDER_PACKAGE.all;--Jeter Gutierrez September 13 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 13 ,2017
entity GUTIERREZ_TESTING_PACKAGE is--Jeter Gutierrez September 13 ,2017
port(A,   B:     in  std_logic ;--Jeter Gutierrez September 13 ,2017
       SUM, CARRY: out std_logic);--Jeter Gutierrez September 13 ,2017
end GUTIERREZ_TESTING_PACKAGE;--Jeter Gutierrez September 13 ,2017
architecture behavior of GUTIERREZ_TESTING_PACKAGE is--Jeter Gutierrez September 13 ,2017
--signal a1, b1, s1, c1: std_logic;--Jeter Gutierrez September 13 ,2017
begin --Jeter Gutierrez September 13 ,2017
test1:GUTIERREZ_HALF_ADDER port map (A,B,SUM,CARRY);--Jeter Gutierrez September 13 ,2017
end behavior;--Jeter Gutierrez September 13 ,2017