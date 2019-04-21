library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity GUTI_TEST_ACCUMULATOR is
end GUTI_TEST_ACCUMULATOR;
architecture ACUMULATE of GUTI_TEST_ACCUMULATOR is
--componengt declaration for the Unit Under Test
component GUTI_16bit_Accumulator is
      port(a: in std_logic_vector(15 downto 0);
				clk,reset: in std_logic;
				sum: out std_logic_vector(15 downto 0);
				hex1, hex2, hex3, hex4: out std_logic_vector(6 downto 0);
				overflow: out std_logic);
end component;
ARCHITECTURE ACCUMULATE IS
begin
-----Instantiate the Unit Under Test (UUT)
uut: GUTI_16bit_Accumulator port map (
SUBTRACT => Ci,
X => A,
Y => B,
S => SUM,
Cout =>Co,
NEGATIVE => NEGATIVE2,
Z => Z1,
Overflow => Overflow2
);
tb : process
begin
wait for 100 ns;
report "TESTING 4 BIT COMPARATOR ADVANCED";
A<="0000";
B<="0000";
Ci<='1';
for I in 0 to 16 loop
for J in 0 to 16 loop
wait for 10 ns;
assert (Sum = A-B) report "The Comparison between A and Be IS S= " & integer'image(to_integer(signed((SUM)))) &
" while the expected A compared to B = " & integer'image(to_integer(signed((A-B)))) severity ERROR;
if A=B then
assert (Z1='1') report "Same Values are being reported as different" severity ERROR;
else assert(Z1='0')report "Different Values are being  reported as teh same" severity ERROR;
end if;
assert(NEGATIVE2=Sum(3))report "Sign is incorrect." severity ERROR;
assert(overflow2=overflow2)report "Overflow is wrong" severity ERROR;
--Increment to the next value of B
B<=B+"0001";
end loop;
--Increment to the next value of A
A<=A+"0001";
--Echo to users test is finished
end loop;
report "Test completed";
wait; -- will wait for ever
end process;
---END User Defined Process
end ACCUMULATE;
