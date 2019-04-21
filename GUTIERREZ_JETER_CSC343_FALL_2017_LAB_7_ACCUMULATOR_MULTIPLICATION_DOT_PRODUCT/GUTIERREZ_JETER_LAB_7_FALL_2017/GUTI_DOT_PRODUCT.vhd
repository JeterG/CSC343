library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity GUTI_DOT_PRODUCT is
port(ONE,TWO : in std_logic_vector(7 downto 0);
		CLOCK,R: IN STD_LOGIC;
		RESULTING:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
   HEX11,HEX22,HEX33,HEX44 : out std_logic_vector(6 downto 0)
);
end GUTI_DOT_PRODUCT;
ARCHITECTURE ARCH OF GUTI_DOT_PRODUCT IS
COMPONENT accumulator is
      port(a: in std_logic_vector(15 downto 0);
				clk8,reset8: in std_logic;
				sum: out std_logic_vector(15 downto 0);
				hex1, hex2, hex3, hex4: out std_logic_vector(6 downto 0);
				overflow: out std_logic);
end COMPONENT;
COMPONENT GUTI_8BITMULTIPLIER is
port ( INPUT_X,INPUT_Y : in std_logic_vector(7 downto 0);
            PRODUCT : out std_logic_vector(15 downto 0));
end COMPONENT;


SIGNAL RESULTS: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL H1,H2,H3,H4:STD_LOGIC_VECTOR(6 DOWNTO 0);
signal a,b: std_logic;
BEGIN
MULTIPLY: GUTI_8BITMULTIPLIER PORT MAP(ONE,TWO,RESULTS);
a<=not clock;
b<= not r;
STORE: accumulator PORT MAP(RESULTS,a,b,RESULTING,HEX11,HEX22,HEX33,HEX44);
END ARCH;