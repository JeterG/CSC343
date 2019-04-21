library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.numeric_std.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_unsigned.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
--USE work.fulladd_package.all ;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_TEST_16_BIT_ADD_SUB is--Jeter Gutierrez September 24 ,2017
end GUTIERREZ_TEST_16_BIT_ADD_SUB;--Jeter Gutierrez September 24 ,2017
architecture arch_test of GUTIERREZ_TEST_16_BIT_ADD_SUB is--Jeter Gutierrez September 24 ,2017
--componengt declaration for the Unit Under Test--Jeter Gutierrez September 24 ,2017
component GUTIERREZ_ADD_SUB_16_BITS--Jeter Gutierrez September 24 ,2017
PORT (SUBTRACT: IN STD_LOGIC;--Jeter Gutierrez September 24 ,2017
X,Y: IN STD_LOGIC_VECTOR(15 DOWNTO 0);--Jeter Gutierrez September 24 ,2017
S: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);--Jeter Gutierrez September 24 ,2017
Cout,Overflow: OUT STD_LOGIC );--Jeter Gutierrez September 24 ,2017
end component;--Jeter Gutierrez September 24 ,2017
signal A,B,Sum_temp :STD_LOGIC_VECTOR(15 DOWNTO 0);--Jeter Gutierrez September 24 ,2017
signal Ci,Co,Overflow2 :STD_LOGIC;--Jeter Gutierrez September 24 ,2017
begin--Jeter Gutierrez September 24 ,2017
-----Instantiate the Unit Under Test (UUT)--Jeter Gutierrez September 24 ,2017
uut: GUTIERREZ_ADD_SUB_16_BITS port map (--Jeter Gutierrez September 24 ,2017
SUBTRACT => Ci,--Jeter Gutierrez September 24 ,2017
X => A,--Jeter Gutierrez September 24 ,2017
Y => B,--Jeter Gutierrez September 24 ,2017
S => Sum_temp,--Jeter Gutierrez September 24 ,2017
Cout =>Co,--Jeter Gutierrez September 24 ,2017
Overflow => Overflow2--Jeter Gutierrez September 24 ,2017
);--Jeter Gutierrez September 24 ,2017
---- Test Bench ---User Defined Process--Jeter Gutierrez September 24 ,2017
tb : process--Jeter Gutierrez September 24 ,2017
begin--Jeter Gutierrez September 24 ,2017
--Hold reset state for 100 ns--Jeter Gutierrez September 24 ,2017
wait for 100 ns;--Jeter Gutierrez September 24 ,2017
report "TESTING 16 BIT SUBTRACTOR";--Jeter Gutierrez September 24 ,2017
A<="0000000000000000";--Jeter Gutierrez September 24 ,2017
B<="0000000000000000";--Jeter Gutierrez September 24 ,2017
Ci<='1';--Jeter Gutierrez September 24 ,2017
--Loop over all values of A--Jeter Gutierrez September 24 ,2017
for I in 0 to 256 loop--Jeter Gutierrez September 24 ,2017
--Loop over all values of B--Jeter Gutierrez September 24 ,2017
for J in 0 to 256 loop--Jeter Gutierrez September 24 ,2017
--Wait for outputto update--Jeter Gutierrez September 24 ,2017
wait for 10 ns;--Jeter Gutierrez September 24 ,2017
---report " the A+B = " & integer'image(to_integer(unsigned((A+B))));--Jeter Gutierrez September 24 ,2017
---The statement below checks for ALL possible input values if the ouput is correct--Jeter Gutierrez September 24 ,2017.
assert (Sum_temp = A-B) report "The DIFFERENCE BETWEEN A AND B  is S= " & integer'image(to_integer(signed((Sum_temp)))) &--Jeter Gutierrez September 24 ,2017
" while the expected A-B = " & integer'image(to_integer(signed((A-B)))) severity ERROR;--Jeter Gutierrez September 24 ,2017
assert (overflow2=overflow2) report "Overflow is wrong" severity ERROR;--Jeter Gutierrez September 24 ,2017
--Increment to the next value of B--Jeter Gutierrez September 24 ,2017
B<=B+"0000000000000001";--Jeter Gutierrez September 24 ,2017
end loop;--Jeter Gutierrez September 24 ,2017
--Increment to the next value of A--Jeter Gutierrez September 24 ,2017
A<=A+"0000000000000001";--Jeter Gutierrez September 24 ,2017
--Echo to users test is finished--Jeter Gutierrez September 24 ,2017
end loop;--Jeter Gutierrez September 24 ,2017
report "Test completed";--Jeter Gutierrez September 24 ,2017
wait; -- will wait for ever--Jeter Gutierrez September 24 ,2017
end process;--Jeter Gutierrez September 24 ,2017
---END User Defined Process--Jeter Gutierrez September 24 ,2017
end arch_test;--Jeter Gutierrez September 24 ,2017