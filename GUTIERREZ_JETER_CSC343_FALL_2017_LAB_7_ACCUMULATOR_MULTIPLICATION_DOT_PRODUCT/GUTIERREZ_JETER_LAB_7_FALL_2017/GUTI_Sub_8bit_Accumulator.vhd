library IEEE;--JETER GUTIERREZ MAY 10 2017
use IEEE.std_logic_1164.all;--JETER GUTIERREZ MAY 10 2017
entity GUTI_Sub_8bit_Accumulator is--JETER GUTIERREZ MAY 10 2017
      port(a: in std_logic_vector(7 downto 0);--JETER GUTIERREZ MAY 10 2017
				clk,reset, subtract: in std_logic;--JETER GUTIERREZ MAY 10 2017
				sum: out std_logic_vector(7 downto 0);--JETER GUTIERREZ MAY 10 2017
				hex1, hex2, hex3, hex4: out std_logic_vector(6 downto 0);--JETER GUTIERREZ MAY 10 2017
				overflow: out std_logic);--JETER GUTIERREZ MAY 10 2017
end GUTI_Sub_8bit_Accumulator;--JETER GUTIERREZ MAY 10 2017
architecture arch of GUTI_Sub_8bit_Accumulator is--JETER GUTIERREZ MAY 10 2017
		 component Subtractor IS--JETER GUTIERREZ MAY 10 2017
		PORT--JETER GUTIERREZ MAY 10 2--JETER GUTIERREZ MAY 10 2017017
	(	add_sub		: IN STD_LOGIC ;--JETER GUTIERREZ MAY 10 2017
		dataa		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);--JETER GUTIERREZ MAY 10 2017
		datab		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);--JETER GUTIERREZ MAY 10 2017
		overflow		: OUT STD_LOGIC ;--JETER GUTIERREZ MAY 10 2017
		result		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));--JETER GUTIERREZ MAY 10 2017
		end component;--JETER GUTIERREZ MAY 10 2017
		component DFF--JETER GUTIERREZ MAY 10 2017
		port(d, clk, clrn: in std_logic;--JETER GUTIERREZ MAY 10 2017
		    q: out std_logic);--JETER GUTIERREZ MAY 10 2017
	   end component;--JETER GUTIERREZ MAY 10 2017
		component GUTI_hex--JETER GUTIERREZ MAY 10 2017
		port(	bi : in std_logic_vector(3 downto 0) := X"0";--JETER GUTIERREZ MAY 10 2017
				seg : out std_logic_vector(6 downto 0) := "0000000");--JETER GUTIERREZ MAY 10 2017
		end component;--JETER GUTIERREZ MAY 10 2017
		signal over: std_logic;--JETER GUTIERREZ MAY 10 2017
		signal input: std_logic_vector(7 downto 0);--JETER GUTIERREZ MAY 10 2017
		signal b, output: std_logic_vector(7 downto 0);--JETER GUTIERREZ MAY 10 2017
    	begin--JETER GUTIERREZ MAY 10 2017
		   DFF8: for i in 0 to 7 generate--JETER GUTIERREZ MAY 10 2017
						DFF_in: DFF port map (a(i), clk, reset, input(i));--JETER GUTIERREZ MAY 10 2017
						DFF_out: DFF port map (output(i), clk ,reset, b(i));--JETER GUTIERREZ MAY 10 2017
					end generate;--JETER GUTIERREZ MAY 10 2017
			Adder: Subtractor port map (not subtract, b, input , over, output);--JETER GUTIERREZ MAY 10 2017
			Overf: DFF port map (over, clk, '1', overflow);--JETER GUTIERREZ MAY 10 2017
			result: sum <= b;--JETER GUTIERREZ MAY 10 2017
			Display1: GUTI_hex port map (b(3 downto 0),hex1);--JETER GUTIERREZ MAY 10 2017
			Display2: GUTI_hex port map (b(7 downto 4),hex2);--JETER GUTIERREZ MAY 10 2017
			Display3: GUTI_hex port map (a(3 downto 0),hex3);--JETER GUTIERREZ MAY 10 2017
			Display4: GUTI_hex port map (a(7 downto 4),hex4);--JETER GUTIERREZ MAY 10 2017
end arch;--JETER GUTIERREZ MAY 10 2017
