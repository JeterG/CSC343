library ieee;--Jeter Gutierrez: October, 4, 2017|
use ieee.std_logic_1164.all;--Jeter Gutierrez: October, 4, 2017|
use work.GUTIERREZ_OPT_CODE_PACKAGE.all;--Jeter Gutierrez: October, 4, 2017|
entity GUTIERREZ_BITWISE_OR is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		Y:	in std_logic_vector (5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end GUTIERREZ_BITWISE_OR;--Jeter Gutierrez: October, 4, 2017|
architecture design_OR of GUTIERREZ_BITWISE_OR is--Jeter Gutierrez: October, 4, 2017|
begin--Jeter Gutierrez: October, 4, 2017|
RESULT<=X or Y;--Jeter Gutierrez: October, 4, 2017|
end design_OR;--Jeter Gutierrez: October, 4, 2017|