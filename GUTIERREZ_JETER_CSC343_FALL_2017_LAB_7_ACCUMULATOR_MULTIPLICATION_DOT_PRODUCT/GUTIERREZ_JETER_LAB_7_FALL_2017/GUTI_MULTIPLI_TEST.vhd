library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_UNsigned.all;
entity GUTI_MULTIPLI_TEST is
end entity;
architecture arch_test of GUTI_MULTIPLI_TEST is
component GUTI_8BITMULTIPLIER is
   port(INPUT_X, INPUT_Y : in std_logic_vector (7 downto 0);
		  PRODUCT: out std_logic_vector (15 downto 0));
end component;
	signal X,Y:STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal P :STD_LOGIC_VECTOR(15 DOWNTO 0);
begin
uut: GUTI_8BITMULTIPLIER
port map (INPUT_X => X,INPUT_Y => Y,PRODUCT => P);
tb : process
begin
wait for 100 ns;
report "TESTING 8 BIT MULTIPLIER";
X<="00000000";
Y<="00000000";
for I in 0 to 256 loop
for J in 0 to 256 loop
wait for 100 ns;
assert (P = X*Y) report "RESULT " & integer'image(to_integer(unsigned((P)))) &
"EXPECTED " & integer'image(to_integer(unsigned((X*Y)))) severity ERROR;
Y<=Y+"00000001";
end loop;
X<=X+"00000001";
end loop;
report "Test completed";
wait;
end process;
end arch_test;
