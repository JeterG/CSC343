Library ieee;--JETER GUTIERREZ MAY 10 2016
use ieee.std_logic_1164.all;--JETER GUTIERREZ MAY 10 2016
entity GUTI_FA is--JETER GUTIERREZ MAY 10 2016
     port(a, b : in std_logic;--JETER GUTIERREZ MAY 10 2016
	       cin : in std_logic;--JETER GUTIERREZ MAY 10 2016
			 cout : out std_logic;--JETER GUTIERREZ MAY 10 2016
			 sum : out std_logic);--JETER GUTIERREZ MAY 10 2016
end GUTI_FA;--JETER GUTIERREZ MAY 10 2016
architecture arch of GUTI_FA is--JETER GUTIERREZ MAY 10 2016
begin--JETER GUTIERREZ MAY 10 2016
     cout <= (a and b) or (cin and a) or (cin and b);--JETER GUTIERREZ MAY 10 2016
	  sum <=   a xor b xor cin;--JETER GUTIERREZ MAY 10 2016
end arch;--JETER GUTIERREZ MAY 10 2016
