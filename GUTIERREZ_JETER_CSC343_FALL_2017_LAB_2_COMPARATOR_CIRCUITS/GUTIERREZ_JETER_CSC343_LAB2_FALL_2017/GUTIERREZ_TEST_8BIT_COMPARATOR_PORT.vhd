library ieee;--Jeter Gutierrez Due September, 18 2017
use ieee.std_logic_1164.all;--Jeter Gutierrez Due September, 18 2017
entity GUTIERREZ_TEST_8BIT_COMPARATOR_PORT is--Jeter Gutierrez Due September, 18 2017
end GUTIERREZ_TEST_8BIT_COMPARATOR_PORT;--Jeter Gutierrez Due September, 18 2017
architecture arch_test of GUTIERREZ_TEST_8BIT_COMPARATOR_PORT is--Jeter Gutierrez Due September, 18 2017
component GUTIERREZ_8BIT_COMPARATOR_PORT--Jeter Gutierrez Due September, 18 2017
port ( a, b : in std_logic_vector(7 downto 0);--Jeter Gutierrez Due September, 18 2017
aeqb : out std_logic);--Jeter Gutierrez Due September, 18 2017
end component;--Jeter Gutierrez Due September, 18 2017
signal p1, p0 : std_logic_vector(7 downto 0);--Jeter Gutierrez Due September, 18 2017
signal pout: std_logic;--Jeter Gutierrez Due September, 18 2017
signal error : std_logic := '0';--Jeter Gutierrez Due September, 18 2017
begin--Jeter Gutierrez Due September, 18 2017
uut: GUTIERREZ_8BIT_COMPARATOR_PORT port map(a => p0, b => p1, aeqb => pout);--Jeter Gutierrez Due September, 18 2017
process--Jeter Gutierrez Due September, 18 2017
begin--Jeter Gutierrez Due September, 18 2017
p0 <= "00000000";--Jeter Gutierrez Due September, 18 2017
p1 <= "00000000";--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '0') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
end if;--Jeter Gutierrez Due September, 18 2017
wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
p0 <= "01010101";--Jeter Gutierrez Due September, 18 2017
p1 <= "00010101";--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '1') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
end if;--Jeter Gutierrez Due September, 18 2017
wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
p0 <= "01100101";--Jeter Gutierrez Due September, 18 2017
p1 <= "11111001";--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '1') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
end if;--Jeter Gutierrez Due September, 18 2017
wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
p0 <= "11110011";--Jeter Gutierrez Due September, 18 2017
p1 <= "00010100";--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '1') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
end if;--Jeter Gutierrez Due September, 18 2017
wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
p0 <= "11001100";--Jeter Gutierrez Due September, 18 2017
p1 <= "11001100";--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '0') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
end if;--Jeter Gutierrez Due September, 18 2017
wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
p0 <= "10010001";--Jeter Gutierrez Due September, 18 2017
p1 <= "11100111";--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '1') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
end if;--Jeter Gutierrez Due September, 18 2017
wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
p0 <= "10111001";--Jeter Gutierrez Due September, 18 2017
p1 <= "10111001";--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '0') then--Jeter Gutierrez Due September, 18 2017
error <= '1';--Jeter Gutierrez Due September, 18 2017
end if;--Jeter Gutierrez Due September, 18 2017
wait for 200 ns;--Jeter Gutierrez Due September, 18 2017
p0 <= "11010011";--Jeter Gutierrez Due September, 18 2017
p1 <= "01101001";--Jeter Gutierrez Due September, 18 2017
wait for 1 ns;--Jeter Gutierrez Due September, 18 2017
if (pout = '1') then--Jeter Gutierrez Due September, 18 2017
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