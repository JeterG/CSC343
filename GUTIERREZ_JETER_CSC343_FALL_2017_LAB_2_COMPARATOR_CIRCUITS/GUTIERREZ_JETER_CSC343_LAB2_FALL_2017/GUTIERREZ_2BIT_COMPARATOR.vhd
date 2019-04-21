library ieee;--Jeter Gutierrez Due September, 18 2017
use ieee.std_logic_1164.all;--Jeter Gutierrez Due September, 18 2017
entity GUTIERREZ_2BIT_COMPARATOR is--Jeter Gutierrez Due September, 18 2017
port ( a, b--Jeter Gutierrez Due September, 18 2017
: in std_logic_vector(1 downto 0);--Jeter Gutierrez Due September, 18 2017
aeqb--Jeter Gutierrez Due September, 18 2017
: out std_logic);--Jeter Gutierrez Due September, 18 2017
end GUTIERREZ_2BIT_COMPARATOR;--Jeter Gutierrez Due September, 18 2017
architecture arch of GUTIERREZ_2BIT_COMPARATOR is--Jeter Gutierrez Due September, 18 2017
signal p0, p1, p2, p3 : std_logic;--Jeter Gutierrez Due September, 18 2017
begin--Jeter Gutierrez Due September, 18 2017
aeqb <= p0 or p1 or p2 or p3;--Jeter Gutierrez Due September, 18 2017
p0 <=  (a(1) and b(1)) and (a(0)and b(0));--Jeter Gutierrez Due September, 18 2017
p1 <=  (a(1)and b(1)) and ((not a(0)) and (not b(0)));--Jeter Gutierrez Due September, 18 2017
p2 <=  ((not a(1)) and (not b(1))) and (a(0) and b(0));--Jeter Gutierrez Due September, 18 2017
p3 <=  ((not a(1)) and (not b(1))) and ((not a(0))and(not b(0)));--Jeter Gutierrez Due September, 18 2017
end arch;--Jeter Gutierrez Due September, 18 2017