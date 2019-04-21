library ieee;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_1164.all;--Jeter Gutierrez September 24 ,2017
use ieee.numeric_std.all;--Jeter Gutierrez September 24 ,2017
use ieee.std_logic_unsigned.all;--Jeter Gutierrez September 24 ,2017
use work.GUTIERREZ_ADDER_PACKAGE_COMPARE.all;--Jeter Gutierrez September 24 ,2017
entity GUTIERREZ_TEST_MISTAKE4_ADDER is--Jeter Gutierrez September 24 ,2017
end GUTIERREZ_TEST_MISTAKE4_ADDER;--Jeter Gutierrez September 24 ,2017
architecture arch_test of GUTIERREZ_TEST_MISTAKE4_ADDER is--Jeter Gutierrez September 24 ,2017
component GUTIERREZ_MISTAKE4_ADDER--Jeter Gutierrez September 24 ,2017
PORT (Cin: IN STD_LOGIC;--Jeter Gutierrez September 24 ,2017
X,Y: IN STD_LOGIC_VECTOR(3 DOWNTO 0);--Jeter Gutierrez September 24 ,2017
sum_prime: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);--Jeter Gutierrez September 24 ,2017
Cout: OUT STD_LOGIC );--Jeter Gutierrez September 24 ,2017
end component;--Jeter Gutierrez September 24 ,2017
signal A,B,S :STD_LOGIC_VECTOR(3 DOWNTO 0);--Jeter Gutierrez September 24 ,2017
signal Ci,Co :STD_LOGIC;--Jeter Gutierrez September 24 ,2017
begin--Jeter Gutierrez September 24 ,2017
-----Instantiate the Unit Under Test (UUT--Jeter Gutierrez September 24 ,2017)
uut: GUTIERREZ_MISTAKE4_ADDER port map (--Jeter Gutierrez September 24 ,2017
Cin => Ci,--Jeter Gutierrez September 24 ,2017
X => A,--Jeter Gutierrez September 24 ,2017
Y => B,--Jeter Gutierrez September 24 ,2017
sum_prime => S,--Jeter Gutierrez September 24 ,2017
Cout =>Co--Jeter Gutierrez September 24 ,2017
);--Jeter Gutierrez September 24 ,2017
---- Test Bench ---User Defined Proces--Jeter Gutierrez September 24 ,2017s
tb : process--Jeter Gutierrez September 24 ,2017
begin--Jeter Gutierrez September 24 ,2017
--Hold reset state for 100 ns--Jeter Gutierrez September 24 ,2017
wait for 100 ns;--Jeter Gutierrez September 24 ,2017
report "TESTING 4 BIT ADDER WITH MISTAKE";--Jeter Gutierrez September 24 ,2017
A<="0000";--Jeter Gutierrez September 24 ,2017
B<="0000";--Jeter Gutierrez September 24 ,2017
Ci<='0';--Jeter Gutierrez September 24 ,2017
--Loop over all values of A--Jeter Gutierrez September 24 ,2017
for I in 0 to 16 loop--Jeter Gutierrez September 24 ,2017
--Loop over all values of B--Jeter Gutierrez September 24 ,2017
for J in 0 to 16 loop--Jeter Gutierrez September 24 ,2017
--Wait for outputto update--Jeter Gutierrez September 24 ,2017
wait for 10 ns;--Jeter Gutierrez September 24 ,2017
---report " the A+B = " & integer'image(to_integer(unsigned((A+B))));--Jeter Gutierrez September 24 ,2017
---The statement below checks for ALL possible input values if the ouput is correct.--Jeter Gutierrez September 24 ,2017
assert (S = A+B) report "The sum from 4 bit adder is S= " & integer'image(to_integer(unsigned((S)))) &--Jeter Gutierrez September 24 ,2017
" while the expected A+B = " & integer'image(to_integer(unsigned((A+B)))) severity ERROR;--Jeter Gutierrez September 24 ,2017
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
end arch_test;--Jeter Gutierrez September 24 ,2017