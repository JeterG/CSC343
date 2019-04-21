library ieee;--Jeter Gutierrez: October, 20, 2017|
use ieee.std_logic_1164.all;--Jeter Gutierrez: October, 20, 2017|
use ieee.numeric_std.all;--Jeter Gutierrez: October, 20, 2017|
use ieee.std_logic_unsigned.all;--Jeter Gutierrez: October, 20, 2017|
use IEEE.std_logic_arith.all;
use work.GUTIERREZ_OPT_CODE_PACKAGE.all;--Jeter Gutierrez: October, 20, 2017|
entity GUTIERREZ_OPCODE is --Jeter Gutierrez: October, 20, 2017|
port( CLOCK: in std_logic;--Jeter Gutierrez: October, 20, 2017|
		OPCODE: in std_logic_vector(3 downto 0);--Jeter Gutierrez: October, 20, 2017|
		X, Y: in std_logic_vector(5 downto 0);--Jeter Gutierrez: October, 20, 2017|
		X_IS_LESS_THAN_Y,NEGATIVE,Z,OVERFLOW_FINAL: out std_logic;
		RESULT: out std_logic_vector(5 downto 0));--Jeter Gutierrez: October, 20, 2017|
end GUTIERREZ_OPCODE;--Jeter Gutierrez: October, 20, 2017|
architecture DESIGN_OPCODE of GUTIERREZ_OPCODE is --Jeter Gutierrez: October, 20, 2017|
component GUTIERREZ_ADD_SUB_6_BITS is
port ( SUBTRACT: in std_logic;--Jeter Gutierrez September 24 ,2017
			 X, Y: in std_logic_vector(5 downto 0);--Jeter Gutierrez September 24 ,2017
			 S: out std_logic_vector (5 downto 0);--Jeter Gutierrez September 24 ,2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez September 24 ,2017
end component;
component GUTIERREZ_ADD_SUB_6_BITS_LPM is
port ( add_sub		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		overflow		: OUT STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (5 DOWNTO 0));
end component;

signal S_TEMP: std_logic_vector(5 downto 0);
signal Cout_temp,Overflow_temp,Cout_temp1,Overflow_temp1,Overflow_temp2,Overflow_temp3: std_logic;
signal RESULT_temp,RESULT_temp1,RESULT_temp2,RESULT_temp3:std_logic_vector (5 downto 0);
	begin--Jeter Gutierrez: October, 20, 2017|
	ADDITION:GUTIERREZ_ADD_SUB_6_BITS port map ('0',X,Y,RESULT_temp,Cout_temp,Overflow_temp);
	SUBTRACTION:GUTIERREZ_ADD_SUB_6_BITS port map ('1',X,Y,RESULT_temp1,Cout_temp1,Overflow_temp1);
	ADDITION_LPM:GUTIERREZ_ADD_SUB_6_BITS_LPM port map('1',X,Y,Overflow_temp2,RESULT_temp2);
	SUBTRACTION_LPM:GUTIERREZ_ADD_SUB_6_BITS_LPM port map('0',X,Y,Overflow_temp3,RESULT_temp3);
	process(CLOCK)--Jeter Gutierrez: October, 20, 2017|
		begin--Jeter Gutierrez: October, 20, 2017|
			if(CLOCK = '1') then--Jeter Gutierrez: October, 20, 2017|
				case OPCODE is --Jeter Gutierrez: October, 20, 2017|
				when "0000" =>--Jeter Gutierrez: October, 20, 2017|
					RESULT <= X and Y;--Jeter Gutierrez: October, 20, 2017|
				when "0001" =>--Jeter Gutierrez: October, 20, 2017|
					RESULT <= X or Y;--Jeter Gutierrez: October, 20, 2017|
				when "0010" =>--Jeter Gutierrez: October, 20, 2017|
					RESULT <= X xor Y;--Jeter Gutierrez: October, 20, 2017|
				when "0011" =>--Jeter Gutierrez: October, 20, 2017|
					RESULT <= not X;--Jeter Gutierrez: October, 20, 2017|
				when "0100" =>--Jeter Gutierrez: October, 20, 2017|
					RESULT <= to_stdlogicvector(to_bitvector(X)sll 1);--Jeter Gutierrez: October, 20, 2017|
				when "0101" =>--Jeter Gutierrez: October, 20, 2017|
					RESULT <= to_stdlogicvector(to_bitvector(X)srl 1);--Jeter Gutierrez: October, 20, 2017|
				when "0110" =>--Jeter Gutierrez: October, 20, 2017|
					RESULT <= to_stdlogicvector(to_bitvector(X)rol 1);--Jeter Gutierrez: October, 20, 2017|
				when "0111" =>--Jeter Gutierrez: October, 20, 2017|
					RESULT <= to_stdlogicvector(to_bitvector(X)ror 1);--Jeter Gutierrez: October, 20, 2017|
				when "1000"=> IF (X<Y) THEN X_IS_LESS_THAN_Y<='1'; END IF;
								  IF (X>Y) THEN X_IS_LESS_THAN_Y<='0'; END IF;
				when "1001"=> RESULT<= RESULT_temp;
									NEGATIVE<=RESULT_temp(5);
									Z<=((RESULT_temp(0) nor RESULT_temp(1)) and (RESULT_temp(2) nor RESULT_temp(3))and(RESULT_temp(4) nor RESULT_temp(5)));
									OVERFLOW_FINAL<=Overflow_temp;
				when "1010"=> RESULT<=RESULT_temp1;
									NEGATIVE<=RESULT_temp1(5);
									Z<=((RESULT_temp1(0) nor RESULT_temp1(1)) and (RESULT_temp1(2) nor RESULT_temp1(3))and(RESULT_temp1(4) nor RESULT_temp1(5)));
									OVERFLOW_FINAL<=Overflow_temp1;
				when "1011"=> RESULT<=RESULT_temp2;
									NEGATIVE<=RESULT_temp2(5);
									Z<=((RESULT_temp2(0) nor RESULT_temp2(1)) and (RESULT_temp2(2) nor RESULT_temp2(3))and(RESULT_temp2(4) nor RESULT_temp2(5)));
									OVERFLOW_FINAL<=Overflow_temp2;
				WHEN "1100"=> RESULT<=RESULT_temp3;
									NEGATIVE<=RESULT_temp3(5);
									Z<=((RESULT_temp3(0) nor RESULT_temp(1)) and (RESULT_temp(2) nor RESULT_temp(3))and(RESULT_temp(4) nor RESULT_temp(5)));
									OVERFLOW_FINAL<=Overflow_temp3;
				when others =>--Jeter Gutierrez: October, 20, 2017|
				NULL;--Jeter Gutierrez: October, 20, 2017|
				end case;--Jeter Gutierrez: October, 20, 2017|
			end if;--Jeter Gutierrez: October, 20, 2017|
		end process;--Jeter Gutierrez: October, 20, 2017|
end DESIGN_OPCODE;--Jeter Gutierrez: October, 20, 2017|
