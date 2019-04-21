library ieee;--Jeter Gutierrez: October, 4, 2017
use ieee.std_logic_1164.all;--Jeter Gutierrez: October, 4, 2017
use ieee.numeric_std.all;--Jeter Gutierrez: October, 4, 2017
use ieee.std_logic_unsigned.all;--Jeter Gutierrez: October, 4, 2017
use work.GUTIERREZ_OPT_CODE_PACKAGE.all;--Jeter Gutierrez: October, 4, 2017
entity GUTIERREZ_TEST_OPCODE is--Jeter Gutierrez: October, 4, 2017
end GUTIERREZ_TEST_OPCODE;--Jeter Gutierrez: October, 4, 2017
architecture arch_test_opcode of GUTIERREZ_TEST_OPCODE is--Jeter Gutierrez: October, 4, 2017
component GUTIERREZ_OPCODE is --Jeter Gutierrez: October, 4, 2017
port( CLOCK: in std_logic;--Jeter Gutierrez: October, 4, 2017|
		OPCODE: in std_logic_vector(3 downto 0);--Jeter Gutierrez: October, 4, 2017|
		X, Y: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		RESULT: out std_logic_vector(5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end component;--Jeter Gutierrez: October, 4, 2017
signal X_PRIME,Y_PRIME,RESULT_PRIME :STD_LOGIC_VECTOR(5 DOWNTO 0);--Jeter Gutierrez: October, 4, 2017
signal CLOCK_PRIME: std_logic := '0';--Jeter Gutierrez: October, 4, 2017
signal OPCODE_PRIME: std_logic_vector(3 downto 0);--Jeter Gutierrez: October, 4, 2017
begin--Jeter Gutierrez: October, 4, 2017
uut: GUTIERREZ_OPCODE port map (--Jeter Gutierrez: October, 4, 2017
CLOCK=> CLOCK_PRIME,--Jeter Gutierrez: October, 4, 2017
OPCODE=> OPCODE_PRIME,--Jeter Gutierrez: October, 4, 2017
X => X_PRIME,--Jeter Gutierrez: October, 4, 2017
Y => Y_PRIME,--Jeter Gutierrez: October, 4, 2017
RESULT => RESULT_PRIME--Jeter Gutierrez: October, 4, 2017
);--Jeter Gutierrez: October, 4, 2017
tb : process--Jeter Gutierrez: October, 4, 2017
begin--Jeter Gutierrez: October, 4, 2017
wait for 5 ns;--Jeter Gutierrez: October, 4, 2017
report "TESTING OPCODE";--Jeter Gutierrez: October, 4, 2017
X_PRIME<="000000";--Jeter Gutierrez: October, 4, 2017
Y_PRIME<="000000";--Jeter Gutierrez: October, 4, 2017
OPCODE_PRIME<="0000";--Jeter Gutierrez: October, 4, 2017
for XS in 0 to 2710 loop--Jeter Gutierrez: October, 4, 2017
for YS in 0 to 2710 loop--Jeter Gutierrez: October, 4, 2017
for OPCODES in 0 to 16 loop--Jeter Gutierrez: October, 4, 2017
wait for 5 ns;--Jeter Gutierrez: October, 4, 2017
CLOCK_PRIME<='1';--Jeter Gutierrez: October, 4, 2017
wait for 5 ns;--Jeter Gutierrez: October, 4, 2017
CLOCK_PRIME<='0';--Jeter Gutierrez: October, 4, 2017
if (OPCODE_PRIME="0000") then--Jeter Gutierrez: October, 4, 2017
assert( RESULT_PRIME =(X_PRIME and Y_PRIME)) report "0000 ERROR IN AND" severity ERROR;--Jeter Gutierrez: October, 4, 2017
end if;--Jeter Gutierrez: October, 4, 2017
if (OPCODE_PRIME="0001") then--Jeter Gutierrez: October, 4, 2017
assert(RESULT_PRIME =(X_PRIME OR Y_PRIME)) report "0001 ERROR IN OR" severity ERROR;--Jeter Gutierrez: October, 4, 2017
end if;--Jeter Gutierrez: October, 4, 2017
if (OPCODE_PRIME="0010") then--Jeter Gutierrez: October, 4, 2017
assert(RESULT_PRIME =(X_PRIME XOR Y_PRIME)) report "0010 ERROR IN XOR" severity ERROR;--Jeter Gutierrez: October, 4, 2017
end if;--Jeter Gutierrez: October, 4, 2017
if (OPCODE_PRIME="0011") then--Jeter Gutierrez: October, 4, 2017
assert(RESULT_PRIME =(NOT X_PRIME)) report "0011 ERROR IN NOT" severity ERROR;--Jeter Gutierrez: October, 4, 2017
end if;--Jeter Gutierrez: October, 4, 2017
if (OPCODE_PRIME="0100") then--Jeter Gutierrez: October, 4, 2017
assert(RESULT_PRIME = to_stdlogicvector(to_bitvector(X_PRIME)sll 1)) report "0100 ERROR IN SHIFT LEFT" severity ERROR;--Jeter Gutierrez: October, 4, 2017
end if;--Jeter Gutierrez: October, 4, 2017
if (OPCODE_PRIME="0101") then--Jeter Gutierrez: October, 4, 2017
assert(RESULT_PRIME = to_stdlogicvector(to_bitvector(X_PRIME)srl 1)) report "0101 ERROR IN SHIFT RIGHT" severity ERROR;--Jeter Gutierrez: October, 4, 2017
end if;--Jeter Gutierrez: October, 4, 2017
if (OPCODE_PRIME="0110") then--Jeter Gutierrez: October, 4, 2017
assert(RESULT_PRIME = to_stdlogicvector(to_bitvector(X_PRIME)rol 1)) report "0110 ERROR IN ROTATE LEFT" severity ERROR;--Jeter Gutierrez: October, 4, 2017
end if;--Jeter Gutierrez: October, 4, 2017
if (OPCODE_PRIME="0111") then--Jeter Gutierrez: October, 4, 2017
assert(RESULT_PRIME = to_stdlogicvector(to_bitvector(X_PRIME)ror 1)) report "0111 ERROR IN ROTATE RIGHT" severity ERROR;--Jeter Gutierrez: October, 4, 2017
end if;--Jeter Gutierrez: October, 4, 2017
X_PRIME<=X_PRIME+"000001";--Jeter Gutierrez: October, 4, 2017
end loop;--Jeter Gutierrez: October, 4, 2017
Y_PRIME<=Y_PRIME+"000001";--Jeter Gutierrez: October, 4, 2017
end loop;--Jeter Gutierrez: October, 4, 2017
wait for 5 ns;--Jeter Gutierrez: October, 4, 2017
OPCODE_PRIME<=OPCODE_PRIME+"0001";--Jeter Gutierrez: October, 4, 2017
end loop;--Jeter Gutierrez: October, 4, 2017
report "Test completed";--Jeter Gutierrez: October, 4, 2017
wait; -- will wait for ever--Jeter Gutierrez: October, 4, 2017
end process;--Jeter Gutierrez: October, 4, 2017
end arch_test_opcode;--Jeter Gutierrez: October, 4, 2017
