library ieee;--Jeter Gutierrez Due September, 18 2017
use ieee.std_logic_1164.all;--Jeter Gutierrez Due September, 18 2017
entity GUTIERREZ_2BIT_COMPARATOR_PORT is--Jeter Gutierrez Due September, 18 2017
port (--Jeter Gutierrez Due September, 18 2017
a, b: in std_logic_vector(1 downto 0);--Jeter Gutierrez Due September, 18 2017
aeqb : out std_logic);--Jeter Gutierrez Due September, 18 2017
end GUTIERREZ_2BIT_COMPARATOR_PORT;--Jeter Gutierrez Due September, 18 2017
architecture arch of GUTIERREZ_2BIT_COMPARATOR_PORT is--Jeter Gutierrez Due September, 18 2017
component GUTIERREZ_1BIT_COMPARATOR--Jeter Gutierrez Due September, 18 2017
port (--Jeter Gutierrez Due September, 18 2017
I0, I1: in std_logic;--Jeter Gutierrez Due September, 18 2017
Eq : out std_logic);--Jeter Gutierrez Due September, 18 2017
end component;--Jeter Gutierrez Due September, 18 2017
signal e0,e1: std_logic;--Jeter Gutierrez Due September, 18 2017
begin--Jeter Gutierrez Due September, 18 2017
H1: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(0), i1=>b(0), eq=>e0);--Jeter Gutierrez Due September, 18 2017
H2: GUTIERREZ_1BIT_COMPARATOR port map(i0=>a(1), i1=>b(1), eq=>e1);--Jeter Gutierrez Due September, 18 2017
aeqb <= e0 and e1;--Jeter Gutierrez Due September, 18 2017
end arch;--Jeter Gutierrez Due September, 18 2017