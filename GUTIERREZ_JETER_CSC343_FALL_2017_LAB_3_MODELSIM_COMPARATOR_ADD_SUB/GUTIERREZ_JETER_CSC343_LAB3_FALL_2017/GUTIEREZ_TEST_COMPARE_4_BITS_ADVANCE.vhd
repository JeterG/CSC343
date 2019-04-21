library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.numeric_std.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_unsigned.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
--USE work.fulladd_package.all ;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_TEST_COMPARE_4_BITS_ADVANCE is--Jeter Gutierrez September 24 ,2017
end GUTIERREZ_TEST_COMPARE_4_BITS_ADVANCE;--Jeter Gutierrez September 24 ,2017
architecture arch_test_4_COMPARE of GUTIERREZ_TEST_COMPARE_4_BITS_ADVANCE is--Jeter Gutierrez September 24 ,2017
--componengt declaration for the Unit Under Test--Jeter Gutierrez September 24 ,2017
component GUTIERREZ_COMPARE_4_BITS_ADVANCE is --Jeter Gutierrez September 24 ,2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez September 24 ,2017
			 S: out std_logic_vector (3 downto 0);--Jeter Gutierrez September 24 ,2017
			 NEGATIVE: out std_logic;--Jeter Gutierrez September 24 ,2017
			 Z: out std_logic;--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end component;--Jeter Gutierrez September 24 ,2017
signal A,B,SUM :STD_LOGIC_VECTOR(3 DOWNTO 0);--Jeter Gutierrez September 24 ,2017
signal Ci,Co,NEGATIVE2,Z1,Overflow2 :STD_LOGIC;--Jeter Gutierrez September 24 ,2017
begin--Jeter Gutierrez September 24 ,2017
-----Instantiate the Unit Under Test (UUT)--Jeter Gutierrez September 24 ,2017
uut: GUTIERREZ_COMPARE_4_BITS_ADVANCE port map (--Jeter Gutierrez September 24 ,2017
SUBTRACT => Ci,--Jeter Gutierrez September 24 ,2017
X => A,--Jeter Gutierrez September 24 ,2017
Y => B,--Jeter Gutierrez September 24 ,2017
S => SUM,--Jeter Gutierrez September 24 ,2017
Cout =>Co,--Jeter Gutierrez September 24 ,2017
NEGATIVE => NEGATIVE2,--Jeter Gutierrez September 24 ,2017
Z => Z1,--Jeter Gutierrez September 24 ,2017
Overflow => Overflow2--Jeter Gutierrez September 24 ,2017
);--Jeter Gutierrez September 24 ,2017
---- Test Bench ---User Defined Process--Jeter Gutierrez September 24 ,2017
tb : process--Jeter Gutierrez September 24 ,2017
begin--Jeter Gutierrez September 24 ,2017
--Hold reset state for 100 ns--Jeter Gutierrez September 24 ,2017
wait for 100 ns;--Jeter Gutierrez September 24 ,2017
report "TESTING 4 BIT COMPARATOR ADVANCED";--Jeter Gutierrez September 24 ,2017
A<="0000";--Jeter Gutierrez September 24 ,2017
B<="0000";--Jeter Gutierrez September 24 ,2017
Ci<='1';--Jeter Gutierrez September 24 ,2017
--Loop over all values of A--Jeter Gutierrez September 24 ,2017
for I in 0 to 16 loop--Jeter Gutierrez September 24 ,2017
--Loop over all values of B--Jeter Gutierrez September 24 ,2017
for J in 0 to 16 loop--Jeter Gutierrez September 24 ,2017
--Wait for outputto update--Jeter Gutierrez September 24 ,2017
wait for 10 ns;--Jeter Gutierrez September 24 ,2017
---report " the A+B = " & integer'image(to_integer(unsigned((A+B))));--Jeter Gutierrez September 24 ,2017
---The statement below checks for ALL possible input values if the ouput is correct.--Jeter Gutierrez September 24 ,2017
assert (Sum = A-B) report "The Comparison between A and Be IS S= " & integer'image(to_integer(signed((SUM)))) &--Jeter Gutierrez September 24 ,2017
" while the expected A compared to B = " & integer'image(to_integer(signed((A-B)))) severity ERROR;--Jeter Gutierrez September 24 ,2017
if A=B then--Jeter Gutierrez September 24 ,2017
assert (Z1='1') report "Same Values are being reported as different" severity ERROR;--Jeter Gutierrez September 24 ,2017
else assert(Z1='0')report "Different Values are being  reported as teh same" severity ERROR;--Jeter Gutierrez September 24 ,2017
end if;--Jeter Gutierrez September 24 ,2017
assert(NEGATIVE2=Sum(3))report "Sign is incorrect." severity ERROR;--Jeter Gutierrez September 24 ,2017
assert(overflow2=overflow2)report "Overflow is wrong" severity ERROR;--Jeter Gutierrez September 24 ,2017
--Jeter Gutierrez September 24 ,2017
--Increment to the next value of B--Jeter Gutierrez September 24 ,2017
B<=B+"0001";--Jeter Gutierrez September 24 ,2017
end loop;--Jeter Gutierrez September 24 ,2017
--Increment to the next value of A--Jeter Gutierrez September 24 ,2017
A<=A+"0001";--Jeter Gutierrez September 24 ,2017
--Echo to users test is finished--Jeter Gutierrez September 24 ,2017
end loop;--Jeter Gutierrez September 24 ,2017
report "Test completed";--Jeter Gutierrez September 24 ,2017
wait; -- will wait for ever--Jeter Gutierrez September 24 ,2017
end process;--Jeter Gutierrez September 24 ,2017
---END User Defined Process--Jeter Gutierrez September 24 ,2017
end arch_test_4_COMPARE;--Jeter Gutierrez September 24 ,2017