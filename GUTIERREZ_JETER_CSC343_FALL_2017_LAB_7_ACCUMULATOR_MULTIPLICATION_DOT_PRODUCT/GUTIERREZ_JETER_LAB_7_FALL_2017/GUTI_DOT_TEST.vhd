library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity GUTI_DOT_TEST is
end entity;
architecture arch_test of GUTI_DOT_TEST is
COMPONENT GUTI_DOT_PRODUCT is
port(ONE,TWO : in std_logic_vector(7 downto 0);
		CLOCK,R: IN STD_LOGIC;
		RESULTING:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
   HEX11,HEX22,HEX33,HEX44 : out std_logic_vector(6 downto 0));
end COMPONENT;
	signal X,Y :STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL H1,H2,H3,H4: STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL CLK1,RESET1: STD_LOGIC;
	SIGNAL DONE:STD_LOGIC_VECTOR(15 DOWNTO 0);
begin
uut: GUTI_DOT_PRODUCT
port map (ONE => X,TWO => Y,CLOCK => CLK1,R =>RESET1,RESULTING =>DONE,HEX11 =>H1,HEX22 =>H2,HEX33 =>H3,HEX44 =>H4);
tb : process
begin
wait for 100 ns;
report "TESTING DOT PRODUCT";
X<="00000001";
Y<="00000010";
RESET1<='0';
WAIT FOR 30 NS;
RESET1<='1';
for I in 0 to 256 loop
assert (DONE = DONE) report "EXPECTED " & integer'image(to_integer(unsigned((DONE)))) &
" RESULT " & integer'image(to_integer(unsigned((DONE+(X*Y))))) severity ERROR;
wait for 100 ns;
CLK1<='0';
WAIT FOR 30 NS;
CLK1<='1';
end loop;
report "Test completed";
wait;
end process;
end arch_test;
