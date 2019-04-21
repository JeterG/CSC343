library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GUTI_8BIT_MULTIPLICATION is 
port ( ONE,TWO : in std_logic_vector(7 downto 0);
		RESULTS: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            HEX11,HEX22,HEX33,HEX44,HEX55,HEX66,HEX77,HEX88 : out std_logic_vector(6 downto 0));
end GUTI_8BIT_MULTIPLICATION;
ARCHITECTURE MULTIPLYING OF GUTI_8BIT_MULTIPLICATION IS
COMPONENT GUTI_8BITMULTIPLIER IS
port ( INPUT_X,INPUT_Y : in std_logic_vector(7 downto 0);
            PRODUCT : out std_logic_vector(15 downto 0));
end COMPONENT;
component dec_to_hex is port (
		hex_digit: in std_logic_vector(3 downto 0);
		seg_a: out std_logic;
		seg_b: out std_logic;
		seg_c: out std_logic;
		seg_d: out std_logic;
		seg_e: out std_logic;
		seg_f: out std_logic;
		seg_g: out std_logic);
end component;
SIGNAL RESULT: STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
MULTIPLICATION: GUTI_8BITMULTIPLIER PORT MAP(ONE,TWO,RESULT);
RESULTS<=RESULT;

Hx1: dec_to_hex port map(ONE(3 downto 0), HEX11(0), HEX11(1), HEX11(2), HEX11(3),HEX11(4), HEX11(5), HEX11(6));
Hx2: dec_to_hex port map (ONE(7 downto 4), HEX22(0), HEX22(1), HEX22(2), HEX22(3),HEX22(4), HEX22(5), HEX22(6));
Hx3: dec_to_hex port map (TWO(3 downto 0), HEX33(0), HEX33(1), HEX33(2), HEX33(3),HEX33(4), HEX33(5), HEX33(6));
Hx4: dec_to_hex port map (TWO(7 downto 4), HEX44(0), HEX44(1), HEX44(2), HEX44(3),HEX44(4), HEX44(5), HEX44(6));
Hx5: dec_to_hex port map (RESULT(3 downto 0), HEX55(0), HEX55(1), HEX55(2), HEX55(3),HEX55(4), HEX55(5), HEX55(6));
Hx6: dec_to_hex port map (RESULT(7 downto 4), HEX66(0), HEX66(1), HEX66(2), HEX66(3),HEX66(4), HEX66(5), HEX66(6));
Hx7: dec_to_hex port map (RESULT(11 downto 8), HEX77(0), HEX77(1), HEX77(2), HEX77(3),HEX77(4), HEX77(5), HEX77(6));
Hx8: dec_to_hex port map (RESULT(15 downto 12), HEX88(0), HEX88(1), HEX88(2), HEX88(3),HEX88(4), HEX88(5), HEX88(6));
END MULTIPLYING;