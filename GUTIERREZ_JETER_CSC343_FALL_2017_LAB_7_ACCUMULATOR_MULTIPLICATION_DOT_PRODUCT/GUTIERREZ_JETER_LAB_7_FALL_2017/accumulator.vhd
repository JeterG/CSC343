library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity accumulator is
port(a : in std_logic_vector(15 downto 0);
clk8, reset8 : in std_logic;
sum : out std_logic_vector(15 downto 0);
hex1, hex2, hex3, hex4: out std_logic_vector(6 downto 0);
overflow: out std_logic);
end accumulator;
architecture bhv of accumulator is
signal tmp: std_logic_vector(15 downto 0);
component GUTI_hex
		port(	bi : in std_logic_vector(3 downto 0) := X"0";
				seg : out std_logic_vector(6 downto 0) := "0000000");
		end component;
begin
process (clk8, reset8)
begin
if (reset8='1') then
tmp <= "0000000000000000";
elsif rising_edge(clk8) then
tmp <= tmp + a;
end if;
end process;
sum <= tmp;
			Display1: GUTI_hex port map (tmp(3 downto 0),hex1);
			Display2: GUTI_hex port map (tmp(7 downto 4),hex2);
			Display3: GUTI_hex port map (tmp(11 downto 8),hex3);
			Display4: GUTI_hex port map (tmp(15 downto 12),hex4);
end bhv;