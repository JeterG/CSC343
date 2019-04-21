library IEEE;--Jeter Gutierrez September 11 ,2017
use work.GUTIERREZ_ADDER_PACKAGE.all;
use ieee.std_logic_1164.all;--Jeter Gutierrez September 11 ,2017
entity GUTIERREZ_HALF_ADDER is--Jeter Gutierrez September 11 ,2017
  port(A,   B:     in  std_logic ;--Jeter Gutierrez September 11 ,2017
       SUM, CARRY: out std_logic);--Jeter Gutierrez September 11 ,2017
end GUTIERREZ_HALF_ADDER;--Jeter Gutierrez September 11 ,2017
--Jeter Gutierrez September 11 ,2017
architecture behavior of GUTIERREZ_HALF_ADDER is--Jeter Gutierrez September 11 ,2017
begin--Jeter Gutierrez September 11 ,2017
    SUM   <= A xor B;--Jeter Gutierrez September 11 ,2017
    CARRY <= A and B;--Jeter Gutierrez September 11 ,2017
end behavior;--Jeter Gutierrez September 11 ,2017
