library ieee;--JETER GUTIERREZ NOVEMBER 22, 2017
use ieee.std_logic_1164.all;--JETER GUTIERREZ NOVEMBER 22, 2017
entity GUTI_multi_4bit is--JETER GUTIERREZ NOVEMBER 22, 2017
   port(a, b : in std_logic_vector (3 downto 0);--JETER GUTIERREZ NOVEMBER 22, 2017
		  hex1, hex2, hex3, hex4: out std_logic_vector(6 downto 0);--JETER GUTIERREZ NOVEMBER 22, 2017
		  p: out std_logic_vector (7 downto 0)); --JETER GUTIERREZ NOVEMBER 22, 2017
end GUTI_multi_4bit; --JETER GUTIERREZ NOVEMBER 22, 2017
architecture arch of GUTI_multi_4bit is--JETER GUTIERREZ NOVEMBER 22, 2017
	component LPM_4bitAdd is --JETER GUTIERREZ NOVEMBER 22, 2017
	PORT( cin		: IN STD_LOGIC ;--JETER GUTIERREZ NOVEMBER 22, 2017
			dataa		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);--JETER GUTIERREZ NOVEMBER 22, 2017
			datab		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);--JETER GUTIERREZ NOVEMBER 22, 2017
			cout		: OUT STD_LOGIC ;--JETER GUTIERREZ NOVEMBER 22, 2017
			result		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));--JETER GUTIERREZ NOVEMBER 22, 2017
	end component;--JETER GUTIERREZ NOVEMBER 22, 2017
	component GUTI_hex--JETER GUTIERREZ NOVEMBER 22, 2017
	port(	bi : in std_logic_vector(3 downto 0) := X"0";--JETER GUTIERREZ NOVEMBER 22, 2017
			seg : out std_logic_vector(6 downto 0) := "0000000");--JETER GUTIERREZ NOVEMBER 22, 2017
	end component;--JETER GUTIERREZ NOVEMBER 22, 2017
	signal c1, c2: std_logic;--JETER GUTIERREZ NOVEMBER 22, 2017
	signal product: std_logic_vector(7 downto 0);--JETER GUTIERREZ NOVEMBER 22, 2017
	signal s1,s2,s3, a1,b1, a2,b2, a3, b3 :std_logic_vector(3 downto 0);--JETER GUTIERREZ NOVEMBER 22, 2017
   begin--JETER GUTIERREZ NOVEMBER 22, 2017
		  product(0)<= a(0) and b(0);--JETER GUTIERREZ NOVEMBER 22, 2017
		  product(1)<=s1(0);--JETER GUTIERREZ NOVEMBER 22, 2017
		  product(2)<=s2(0);--JETER GUTIERREZ NOVEMBER 22, 2017
		  product(6 downto 3)<=s3;--JETER GUTIERREZ NOVEMBER 22, 2017
		  a1(3)<='0';--JETER GUTIERREZ NOVEMBER 22, 2017
		  a2(3)<=c1;--JETER GUTIERREZ NOVEMBER 22, 2017
		  a3(3)<=c2;--JETER GUTIERREZ NOVEMBER 22, 2017
		  p<=product;--JETER GUTIERREZ NOVEMBER 22, 2017
		  Adder4bit1: for i in 0 to 2 generate--JETER GUTIERREZ NOVEMBER 22, 2017
				a1(i) <= b(0) and a(i+1);--JETER GUTIERREZ NOVEMBER 22, 2017
				a2(i) <= s1(i+1);--JETER GUTIERREZ NOVEMBER 22, 2017
				a3(i) <= s2(i+1);--JETER GUTIERREZ NOVEMBER 22, 2017
		  end generate;--JETER GUTIERREZ NOVEMBER 22, 2017
		  Adder4bit2: for i in 0 to 3 generate
				b1(i) <= b(1) and a(i);--JETER GUTIERREZ NOVEMBER 22, 2017
				b2(i) <= b(2) and a(i);--JETER GUTIERREZ NOVEMBER 22, 2017
				b3(i) <= b(3) and a(i);--JETER GUTIERREZ NOVEMBER 22, 2017
		  end generate;--JETER GUTIERREZ NOVEMBER 22, 2017
		Sum1 : LPM_4bitAdd port map('0',a1, b1, c1, s1);--JETER GUTIERREZ NOVEMBER 22, 2017
		Sum2 : LPM_4bitAdd port map('0',a2, b2, c2, s2);--JETER GUTIERREZ NOVEMBER 22, 2017
		Sum3 : LPM_4bitAdd port map('0',a3, b3, product(7), s3);--JETER GUTIERREZ NOVEMBER 22, 2017
		Display1: GUTI_hex port map (a(3 downto 0),hex1);--JETER GUTIERREZ NOVEMBER 22, 2017
		Display2: GUTI_hex port map (b(3 downto 0),hex2);--JETER GUTIERREZ NOVEMBER 22, 2017
		Display3: GUTI_hex port map (product(3 downto 0),hex3);--JETER GUTIERREZ NOVEMBER 22, 2017
		Display4: GUTI_hex port map (product(7 downto 4),hex4);--JETER GUTIERREZ NOVEMBER 22, 2017
end arch;--JETER GUTIERREZ NOVEMBER 22, 2017