library ieee;--Jeter Gutierrez Due September, 18 2017
use ieee.std_logic_1164.all;--Jeter Gutierrez Due September, 18 2017
entity GUTIERREZ_TEST_1BIT_COMPARATOR is--Jeter Gutierrez Due September, 18 2017
end GUTIERREZ_TEST_1BIT_COMPARATOR;--Jeter Gutierrez Due September, 18 2017
architecture arch_test of GUTIERREZ_TEST_1BIT_COMPARATOR is--Jeter Gutierrez Due September, 18 2017
component GUTIERREZ_1BIT_COMPARATOR--Jeter Gutierrez Due September, 18 2017
port ( I0, I1 : in std_logic;--Jeter Gutierrez Due September, 18 2017
Eq: out std_logic );--Jeter Gutierrez Due September, 18 2017
end component;--Jeter Gutierrez Due September, 18 2017
signal p1, p0, pout : std_logic;--Jeter Gutierrez Due September, 18 2017
signal error: std_logic := '0';--Jeter Gutierrez Due September, 18 2017
begin--Jeter Gutierrez Due September, 18 2017
uut: GUTIERREZ_1BIT_COMPARATOR port map (I0 => p0, I1 => p1, Eq => pout);--Jeter Gutierrez Due September, 18 2017
process--Jeter Gutierrez Due September, 18 2017
begin--Jeter Gutierrez Due September, 18 2017
p0 <= '1';--Jeter Gutierrez Due September, 18 2017
p1 <= '0';--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '1') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
 end if;--Jeter Gutierrez Due September, 18 2017
 wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
 p0 <= '1';--Jeter Gutierrez Due September, 18 2017
 p1 <= '1';--Jeter Gutierrez Due September, 18 2017
 wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
 if (pout = '0') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
 end if;--Jeter Gutierrez Due September, 18 2017
 wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
 p0 <= '0';--Jeter Gutierrez Due September, 18 2017
 p1 <= '1';--Jeter Gutierrez Due September, 18 2017
 wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
 if (pout = '1') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
 end if;--Jeter Gutierrez Due September, 18 2017
 wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
 p0 <= '0';--Jeter Gutierrez Due September, 18 2017
 p1 <= '0';--Jeter Gutierrez Due September, 18 2017
 wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
 if (pout = '0') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
 end if;--Jeter Gutierrez Due September, 18 2017
 wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
 if (error = '0') then--Jeter Gutierrez Due September, 18 2017
report "No errors detected. Simulation successful" severity--Jeter Gutierrez Due September, 18 2017
 failure;--Jeter Gutierrez Due September, 18 2017
else--Jeter Gutierrez Due September, 18 2017
report "Error detected" severity failure;--Jeter Gutierrez Due September, 18 2017
 end if;--Jeter Gutierrez Due September, 18 2017
 end process;--Jeter Gutierrez Due September, 18 2017
 end arch_test;--Jeter Gutierrez Due September, 18 2017