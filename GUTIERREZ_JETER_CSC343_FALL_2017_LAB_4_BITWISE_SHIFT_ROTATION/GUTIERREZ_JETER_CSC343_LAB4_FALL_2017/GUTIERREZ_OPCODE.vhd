library ieee;--Jeter Gutierrez: October, 4, 2017|
use ieee.std_logic_1164.all;--Jeter Gutierrez: October, 4, 2017|
use ieee.numeric_std.all;--Jeter Gutierrez: October, 4, 2017|
use ieee.std_logic_unsigned.all;--Jeter Gutierrez: October, 4, 2017|
use IEEE.std_logic_arith.all;
use work.GUTIERREZ_OPT_CODE_PACKAGE.all;--Jeter Gutierrez: October, 4, 2017|
entity GUTIERREZ_OPCODE is --Jeter Gutierrez: October, 4, 2017|
port( CLOCK: in std_logic;--Jeter Gutierrez: October, 4, 2017|
		OPCODE: in std_logic_vector(3 downto 0);--Jeter Gutierrez: October, 4, 2017|
		X, Y: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 4, 2017|
		X_IS_LESS_THAN_Y: out std_logic;
		RESULT: out std_logic_vector(5 downto 0));--Jeter Gutierrez: October, 4, 2017|
end GUTIERREZ_OPCODE;--Jeter Gutierrez: October, 4, 2017|
architecture DESIGN_OPCODE of GUTIERREZ_OPCODE is --Jeter Gutierrez: October, 4, 2017|
	begin--Jeter Gutierrez: October, 4, 2017|
	process(CLOCK)--Jeter Gutierrez: October, 4, 2017|
		begin--Jeter Gutierrez: October, 4, 2017|
			if(CLOCK = '1') then--Jeter Gutierrez: October, 4, 2017|
				case OPCODE is --Jeter Gutierrez: October, 4, 2017|
				when "0000" =>--Jeter Gutierrez: October, 4, 2017|
					RESULT <= X and Y;--Jeter Gutierrez: October, 4, 2017|
				when "0001" =>--Jeter Gutierrez: October, 4, 2017|
					RESULT <= X or Y;--Jeter Gutierrez: October, 4, 2017|
				when "0010" =>--Jeter Gutierrez: October, 4, 2017|
					RESULT <= X xor Y;--Jeter Gutierrez: October, 4, 2017|
				when "0011" =>--Jeter Gutierrez: October, 4, 2017|
					RESULT <= not X;--Jeter Gutierrez: October, 4, 2017|
				when "0100" =>--Jeter Gutierrez: October, 4, 2017|
					RESULT <= to_stdlogicvector(to_bitvector(X)sll 1);--Jeter Gutierrez: October, 4, 2017|
				when "0101" =>--Jeter Gutierrez: October, 4, 2017|
					RESULT <= to_stdlogicvector(to_bitvector(X)srl 1);--Jeter Gutierrez: October, 4, 2017|
				when "0110" =>--Jeter Gutierrez: October, 4, 2017|
					RESULT <= to_stdlogicvector(to_bitvector(X)rol 1);--Jeter Gutierrez: October, 4, 2017|
				when "0111" =>--Jeter Gutierrez: October, 4, 2017|
					RESULT <= to_stdlogicvector(to_bitvector(X)ror 1);--Jeter Gutierrez: October, 4, 2017|
				when "1000"=> IF (X<Y) THEN X_IS_LESS_THAN_Y<='1'; END IF;
									IF (X>Y) THEN X_IS_LESS_THAN_Y<='0'; END IF;
				when others =>--Jeter Gutierrez: October, 4, 2017|
				NULL;--Jeter Gutierrez: October, 4, 2017|
				end case;--Jeter Gutierrez: October, 4, 2017|
			end if;--Jeter Gutierrez: October, 4, 2017|
		end process;--Jeter Gutierrez: October, 4, 2017|
end DESIGN_OPCODE;--Jeter Gutierrez: October, 4, 2017|
