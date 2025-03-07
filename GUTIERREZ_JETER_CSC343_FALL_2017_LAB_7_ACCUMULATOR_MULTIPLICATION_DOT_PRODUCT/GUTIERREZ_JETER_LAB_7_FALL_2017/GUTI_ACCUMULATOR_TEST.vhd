library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity GUTI_ACCUMULATOR_TEST is
end entity;
architecture arch_test of GUTI_ACCUMULATOR_TEST is
COMPONENT accumulator is
port(a : in std_logic_vector(15 downto 0);
clk8, reset8 : in std_logic;
sum : out std_logic_vector(15 downto 0);
hex1, hex2, hex3, hex4: out std_logic_vector(6 downto 0);
overflow: out std_logic);
END COMPONENT;
	signal X,S :STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL H1,H2,H3,H4: STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL CLK1,RESET1,OVERFLOW1: STD_LOGIC;
begin
uut: ACCUMULATOR
port map (A => X,CLK8 => CLK1,RESET8 =>RESET1,SUM =>S,HEX1 =>H1,HEX2 =>H2,HEX3 =>H3,HEX4 =>H4,OVERFLOW=>OVERFLOW1);
tb : process
begin
wait for 100 ns;
report "Testing Accumulator";
X<="0000000000000001";
RESET1<='1';
WAIT FOR 30 NS;
RESET1<='0';
for I in 0 to 256 loop
assert (S = S+X-"0000000000000001") report "The total accumulator sum is  " & integer'image(to_integer(unsigned((S)))) &
" while the expected value is " & integer'image(to_integer(unsigned((S+X-"0000000000000001")))) severity ERROR;
wait for 100 ns;
CLK1<='0';
WAIT FOR 30 NS;
CLK1<='1';
end loop;
report "Test completed";
wait;
end process;
end arch_test;
