library ieee;--Jeter Gutierrez Due September, 18 2017
use ieee.std_logic_1164.all;--Jeter Gutierrez Due September, 18 2017
entity GUTIERREZ_8BIT_COMPARATOR_PORT is--Jeter Gutierrez Due September, 18 2017
port (--Jeter Gutierrez Due September, 18 2017
a, b: in std_logic_vector(7 downto 0);--Jeter Gutierrez Due September, 18 2017
aeqb : out std_logic);--Jeter Gutierrez Due September, 18 2017
end GUTIERREZ_8BIT_COMPARATOR_PORT;--Jeter Gutierrez Due September, 18 2017
architecture arch of GUTIERREZ_8BIT_COMPARATOR_PORT is--Jeter Gutierrez Due September, 18 2017
component GUTIERREZ_1BIT_COMPARATOR--Jeter Gutierrez Due September, 18 2017
port (--Jeter Gutierrez Due September, 18 2017
I0, I1: in std_logic;--Jeter Gutierrez Due September, 18 2017
Eq : out std_logic);--Jeter Gutierrez Due September, 18 2017
end component;--Jeter Gutierrez Due September, 18 2017
signal e0,e1,e2,e3,e4,e5,e6,e7: std_logic;--Jeter Gutierrez Due September, 18 2017
begin--Jeter Gutierrez Due September, 18 2017
H1: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(0), i1=>b(0), eq=>e0);--Jeter Gutierrez Due September, 18 2017
H2: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(1), i1=>b(1), eq=>e1);--Jeter Gutierrez Due September, 18 2017
H3: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(2), i1=>b(2), eq=>e2);--Jeter Gutierrez Due September, 18 2017
H4: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(3), i1=>b(3), eq=>e3);--Jeter Gutierrez Due September, 18 2017
H5: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(4), i1=>b(4), eq=>e4);--Jeter Gutierrez Due September, 18 2017
H6: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(5), i1=>b(5), eq=>e5);--Jeter Gutierrez Due September, 18 2017
H7: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(6), i1=>b(6), eq=>e6);--Jeter Gutierrez Due September, 18 2017
H8: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(7), i1=>b(7), eq=>e7);--Jeter Gutierrez Due September, 18 2017
aeqb <= e0 and e1 and e2 and e3 and e4 and e5 and e6 and e7;--Jeter Gutierrez Due September, 18 2017
end arch;--Jeter Gutierrez Due September, 18 2017