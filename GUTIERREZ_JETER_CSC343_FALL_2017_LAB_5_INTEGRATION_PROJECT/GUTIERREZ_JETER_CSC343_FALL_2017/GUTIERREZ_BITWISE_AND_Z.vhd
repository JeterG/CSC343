library ieee;--Jeter Gutierrez: October, 4, 2017|
use ieee.std_logic_1164.all;--Jeter Gutierrez: October, 4, 2017|
use work.GUTIERREZ_OPT_CODE_PACKAGE.all;--Jeter Gutierrez: October, 4, 2017|
entity GUTIERREZ_BITWISE_AND_Z is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		Y:	in std_logic_vector (5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic);--Jeter Gutierrez: October, 4, 2017|
end GUTIERREZ_BITWISE_AND_Z;--Jeter Gutierrez: October, 4, 2017|
architecture design_and_z of GUTIERREZ_BITWISE_AND_Z is--Jeter Gutierrez: October, 4, 2017|
begin--Jeter Gutierrez: October, 4, 2017|
RESULT<="1" and "Z";--Jeter Gutierrez: October, 4, 2017|
end design_and_z;--Jeter Gutierrez: October, 4, 2017|