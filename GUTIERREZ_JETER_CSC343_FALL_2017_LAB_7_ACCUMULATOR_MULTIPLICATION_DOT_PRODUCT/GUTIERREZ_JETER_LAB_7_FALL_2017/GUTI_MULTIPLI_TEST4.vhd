library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity GUTI_MULTIPLI_TEST4 is
end entity;
architecture arch_test of GUTI_MULTIPLI_TEST4 is
component GUTI_multi_4bit is--JETER GUTIERREZ NOVEMBER 22, 2017
   port(a, b : in std_logic_vector (3 downto 0);--JETER GUTIERREZ NOVEMBER 22, 2017
		  hex1, hex2, hex3, hex4: out std_logic_vector(6 downto 0);--JETER GUTIERREZ NOVEMBER 22, 2017
		  p: out std_logic_vector (7 downto 0)); --JETER GUTIERREZ NOVEMBER 22, 2017
end component; --JETER GUTIERREZ NOVEMBER 22, 2017
	signal X,Y:STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal P1 :STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL H1,H2,H3,H4: STD_LOGIC_VECTOR(6 DOWNTO 0);
begin
uut: GUTI_Multi_4bit
port map (A => X,B => Y,hex1 =>H1,hex2 =>H2,hex3 =>H3,hex4 =>H4,P => P1);
tb : process
begin
wait for 100 ns;
report "Hello Simulator";
X<="0000";
Y<="0000";
for I in 0 to 256 loop
for J in 0 to 256 loop
wait for 100 ns;
assert (P1 = X*Y) report "The Product from 4 IS " & integer'image(to_integer(unsigned((P1)))) &
" EXPECTED " & integer'image(to_integer(unsigned((X*Y)))) severity ERROR;
Y<=Y+"0001";
end loop;
X<=X+"0001";
end loop;
report "Test completed";
wait;
end process;
end arch_test;
