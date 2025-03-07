Library ieee;--JETER GUTIERREZ September 11 2017
use ieee.std_logic_1164.all;--JETER GUTIERREZ September 11 2017
entity GUTIERREZ_FULL_ADDER_USING_HALF_ADDER is--JETER GUTIERREZ September 11 2017
  port(A, B, CIN: in  std_logic;--JETER GUTIERREZ September 11 2017
       SUM, COUT: out std_logic);--JETER GUTIERREZ September 11 2017
end GUTIERREZ_FULL_ADDER_USING_HALF_ADDER;--JETER GUTIERREZ September 11 2017
--JETER GUTIERREZ September 11 2017
architecture arch of GUTIERREZ_FULL_ADDER_USING_HALF_ADDER is--JETER GUTIERREZ September 11 2017
component GUTIERREZ_HALF_ADDER--JETER GUTIERREZ September 11 2017
  port(A,   B:     in  std_logic;--JETER GUTIERREZ September 11 2017
       SUM, CARRY: out std_logic);--JETER GUTIERREZ September 11 2017
end component;--JETER GUTIERREZ September 11 2017
signal G0_CARRY, G0_SUM, G1_CARRY: std_logic;--JETER GUTIERREZ September 11 2017
--JETER GUTIERREZ September 11 2017
begin--JETER GUTIERREZ September 11 2017
  G0: GUTIERREZ_HALF_ADDER port map (A => A,      B => B,   SUM => G0_SUM, CARRY => G0_CARRY);--JETER GUTIERREZ September 11 2017
  G1: GUTIERREZ_HALF_ADDER port map (A => G0_SUM, B => CIN, SUM => SUM,    CARRY => G1_CARRY);--JETER GUTIERREZ September 11 2017
--JETER GUTIERREZ September 11 2017
  COUT <= G0_CARRY or G1_CARRY;--JETER GUTIERREZ September 11 2017
end arch;--JETER GUTIERREZ September 11 2017