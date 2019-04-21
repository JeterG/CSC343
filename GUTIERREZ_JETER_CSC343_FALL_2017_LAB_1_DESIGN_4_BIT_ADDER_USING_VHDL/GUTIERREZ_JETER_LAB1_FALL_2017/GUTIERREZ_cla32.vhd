library IEEE;--Jeter Gutierrez Due 9/13/2017
use IEEE.std_logic_1164.all;--Jeter Gutierrez Due 9/13/2017
entity GUTIERREZ_cla32 is -- 4-bit CLA structural model: top entity--Jeter Gutierrez Due 9/13/2017
port( a, b: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
carryin: in std_logic;--Jeter Gutierrez Due 9/13/2017
sum: out std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
cgout, cpout, overflow: out std_logic);--Jeter Gutierrez Due 9/13/2017
end GUTIERREZ_cla32;--Jeter Gutierrez Due 9/13/2017
architecture arch of GUTIERREZ_cla32 is--Jeter Gutierrez Due 9/13/2017
component GUTIERREZ_FULL_ADDER_G_P -- component declaration full adder--Jeter Gutierrez Due 9/13/2017
port( a, b, cin: in std_logic;--Jeter Gutierrez Due 9/13/2017
sum, g, p: out std_logic);--Jeter Gutierrez Due 9/13/2017
end component;--Jeter Gutierrez Due 9/13/2017
component GUTIERREZ_CLA_LOGIC_32 -- component declaration CLA-generator--Jeter Gutierrez Due 9/13/2017
port( g, p: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
cin: in std_logic;--Jeter Gutierrez Due 9/13/2017
C_Out: out std_logic_vector(30 downto 0);--Jeter Gutierrez Due 9/13/2017
cgout, cpout: out std_logic);--Jeter Gutierrez Due 9/13/2017
end component;--Jeter Gutierrez Due 9/13/2017
signal g, p, carry: std_logic_vector(31 downto 0); --local signals--Jeter Gutierrez Due 9/13/2017
signal cout: std_logic;--Jeter Gutierrez Due 9/13/2017
begin--Jeter Gutierrez Due 9/13/2017
carry(0) <= carryin;--Jeter Gutierrez Due 9/13/2017
GUTI_ADD0: GUTIERREZ_FULL_ADDER_G_P port map (a(0), b(0), carry(0), sum(0), g(0), p(0));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD1: GUTIERREZ_FULL_ADDER_G_P port map (a(1), b(1), carry(1), sum(1), g(1), p(1));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD2: GUTIERREZ_FULL_ADDER_G_P port map (a(2), b(2), carry(2), sum(2), g(2), p(2));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD3: GUTIERREZ_FULL_ADDER_G_P port map (a(3), b(3), carry(3), sum(3), g(3), p(3));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD4: GUTIERREZ_FULL_ADDER_G_P port map (a(4), b(4), carry(4), sum(4), g(4), p(4));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD5: GUTIERREZ_FULL_ADDER_G_P port map (a(5), b(5), carry(5), sum(5), g(5), p(5));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD6: GUTIERREZ_FULL_ADDER_G_P port map (a(6), b(6), carry(6), sum(6), g(6), p(6));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD7: GUTIERREZ_FULL_ADDER_G_P port map (a(7), b(7), carry(7), sum(7), g(7), p(7));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD8: GUTIERREZ_FULL_ADDER_G_P port map (a(8), b(8), carry(8), sum(8), g(8), p(8));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD9: GUTIERREZ_FULL_ADDER_G_P port map (a(9), b(9), carry(9), sum(9), g(9), p(9));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD10: GUTIERREZ_FULL_ADDER_G_P port map (a(10), b(10), carry(10), sum(10), g(10), p(10));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD11: GUTIERREZ_FULL_ADDER_G_P port map (a(11), b(11), carry(11), sum(11), g(11), p(11));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD12: GUTIERREZ_FULL_ADDER_G_P port map (a(12), b(12), carry(12), sum(12), g(12), p(12));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD13: GUTIERREZ_FULL_ADDER_G_P port map (a(13), b(13), carry(13), sum(13), g(13), p(13));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD14: GUTIERREZ_FULL_ADDER_G_P port map (a(14), b(14), carry(14), sum(14), g(14), p(14));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD15: GUTIERREZ_FULL_ADDER_G_P port map (a(15), b(15), carry(15), sum(15), g(15), p(15));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD16: GUTIERREZ_FULL_ADDER_G_P port map (a(16), b(16), carry(16), sum(16), g(16), p(16));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD17: GUTIERREZ_FULL_ADDER_G_P port map (a(17), b(17), carry(17), sum(17), g(17), p(17));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD18: GUTIERREZ_FULL_ADDER_G_P port map (a(18), b(18), carry(18), sum(18), g(18), p(18));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD19: GUTIERREZ_FULL_ADDER_G_P port map (a(19), b(19), carry(19), sum(19), g(19), p(19));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD20: GUTIERREZ_FULL_ADDER_G_P port map (a(20), b(20), carry(20), sum(20), g(20), p(20));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD21: GUTIERREZ_FULL_ADDER_G_P port map (a(21), b(21), carry(21), sum(21), g(21), p(21));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD22: GUTIERREZ_FULL_ADDER_G_P port map (a(22), b(22), carry(22), sum(22), g(22), p(22));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD23: GUTIERREZ_FULL_ADDER_G_P port map (a(23), b(23), carry(23), sum(23), g(23), p(23));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD24: GUTIERREZ_FULL_ADDER_G_P port map (a(24), b(24), carry(24), sum(24), g(24), p(24));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD25: GUTIERREZ_FULL_ADDER_G_P port map (a(25), b(25), carry(25), sum(25), g(25), p(25));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD26: GUTIERREZ_FULL_ADDER_G_P port map (a(26), b(26), carry(26), sum(26), g(26), p(26));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD27: GUTIERREZ_FULL_ADDER_G_P port map (a(27), b(27), carry(27), sum(27), g(27), p(27));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD28: GUTIERREZ_FULL_ADDER_G_P port map (a(28), b(28), carry(28), sum(28), g(28), p(28));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD29: GUTIERREZ_FULL_ADDER_G_P port map (a(29), b(29), carry(29), sum(29), g(29), p(29));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD30: GUTIERREZ_FULL_ADDER_G_P port map (a(30), b(30), carry(30), sum(30), g(30), p(30));--Jeter Gutierrez Due 9/13/2017
GUTI_ADD31: GUTIERREZ_FULL_ADDER_G_P port map (a(31), b(31), carry(31), sum(31), g(31), p(31));--Jeter Gutierrez Due 9/13/2017
CLA: GUTIERREZ_CLA_LOGIC_32 port map(g, p, carryin, carry(31 downto 1), cout, cpout);--Jeter Gutierrez Due 9/13/2017
cgout <= cout;--Jeter Gutierrez Due 9/13/2017
overflow <= carry(31) xor cout;--Jeter Gutierrez Due 9/13/2017
end arch;--Jeter Gutierrez Due 9/13/2017