library IEEE;
use IEEE.std_logic_1164.all;
entity GUTI_16bit_Accumulator is
      port(a: in std_logic_vector(15 downto 0);
				clk,reset: in std_logic;
				sum: out std_logic_vector(15 downto 0);
				hex1, hex2, hex3, hex4: out std_logic_vector(6 downto 0);
				overflow: out std_logic);
end GUTI_16bit_Accumulator;
architecture arch of GUTI_16bit_Accumulator is
		 component Subtractor_16 IS
		PORT
	(	add_sub		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		overflow		: OUT STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
		end component;
		component DFF
		port(d, clk, clrn: in std_logic;
		    q: out std_logic);
	   end component;
		component GUTI_hex
		port(	bi : in std_logic_vector(3 downto 0) := X"0";
				seg : out std_logic_vector(6 downto 0) := "0000000");
		end component;
		signal over: std_logic;
		signal input: std_logic_vector(15 downto 0);
		signal b, output: std_logic_vector(15 downto 0);
    	begin
		   DFF8: for i in 0 to 15 generate
						DFF_in: DFF port map (a(i), clk, reset, input(i));
						DFF_out: DFF port map (output(i), clk ,reset, b(i));
					end generate;
			Adder: Subtractor_16 port map ('1', b, input , over, output);
			Overf: DFF port map (over, clk, '1', overflow);
			result: sum <= b;
			Display1: GUTI_hex port map (b(3 downto 0),hex1);
			Display2: GUTI_hex port map (b(7 downto 4),hex2);
			Display3: GUTI_hex port map (b(11 downto 8),hex3);
			Display4: GUTI_hex port map (b(15 downto 12),hex4);
end arch;
