Library ieee;--Jeter Gutierrez Due September, 18 2017
use ieee.std_logic_1164.all;--Jeter Gutierrez Due September, 18 2017
entity GUTIERREZ_1BIT_COMPARATOR is--Jeter Gutierrez Due September, 18 2017
port ( I0, I1 : in std_logic;--Jeter Gutierrez Due September, 18 2017
Eq: out std_logic);--Jeter Gutierrez Due September, 18 2017
end GUTIERREZ_1BIT_COMPARATOR;--Jeter Gutierrez Due September, 18 2017
architecture arch of GUTIERREZ_1BIT_COMPARATOR is--Jeter Gutierrez Due September, 18 2017
signal p0, p1 : std_logic;--Jeter Gutierrez Due September, 18 2017
begin--Jeter Gutierrez Due September, 18 2017
EQ <= p0 or p1;--Jeter Gutierrez Due September, 18 2017
p0 <= (not I0) and (not I1);--Jeter Gutierrez Due September, 18 2017
p1 <= I0 and I1;--Jeter Gutierrez Due September, 18 2017
end arch;--Jeter Gutierrez Due September, 18 2017