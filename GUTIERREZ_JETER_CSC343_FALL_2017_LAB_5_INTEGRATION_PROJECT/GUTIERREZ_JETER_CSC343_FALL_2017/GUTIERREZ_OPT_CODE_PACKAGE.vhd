library IEEE;--Jeter Gutierrez: October, 4, 2017|
	use IEEE.std_logic_1164.all;--Jeter Gutierrez: October, 4, 2017|
  Package GUTIERREZ_OPT_CODE_PACKAGE is--Jeter Gutierrez: October, 4, 2017|
  component GUTIERREZ_BITWISE_AND is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		Y:	in std_logic_vector (5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_BITWISE_OR is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		Y:	in std_logic_vector (5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_BITWISE_XOR is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		Y:	in std_logic_vector (5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_BITWISE_NOT is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_BITWISE_SHIFT_LEFT is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_BITWISE_SHIFT_RIGHT is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_BITWISE_ROTATE_LEFT is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
component GUTIERREZ_BITWISE_ROTATE_RIGHT is--Jeter Gutierrez: October, 4, 2017|
port( X: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector (5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017|
   end GUTIERREZ_OPT_CODE_PACKAGE;--Jeter Gutierrez: October, 4, 2017|