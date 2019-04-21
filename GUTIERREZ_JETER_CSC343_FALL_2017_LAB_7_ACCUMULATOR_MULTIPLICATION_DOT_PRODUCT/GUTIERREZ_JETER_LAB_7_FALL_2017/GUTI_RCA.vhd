library ieee;--JETER GUTIERREZ MAY 10, 2017
use ieee.std_logic_1164.all;--JETER GUTIERREZ MAY 10, 2017
entity GUTI_RCA is--JETER GUTIERREZ MAY 10, 2017
   port(a, b : in std_logic_vector (7 downto 0);--JETER GUTIERREZ MAY 10, 2017
	     cin : in std_logic;--JETER GUTIERREZ MAY 10, 2017
     	  cout : out std_logic;--JETER GUTIERREZ MAY 10,--JETER GUTIERREZ MAY 10, 2017 2017
		  sum : out std_logic_vector (7 downto 0));--JETER GUTIERREZ MAY 10, 2017
end GUTI_RCA;--JETER GUTIERREZ MAY 10, 2017
--JETER GUTIERREZ MAY 10, 2017
architecture arch of GUTI_RCA is--JETER GUTIERREZ MAY 10,

    signal c: std_logic_vector (8 downto 0);
	 component GUTI_FA is
	     port(a, b, cin: in std_logic;
	          cout : out std_logic;
	           sum : out std_logic );
	     end component;
    begin
		  GUTI_FA0 : GUTI_FA port map(a(0), b(0), cin, c(1), sum(0));
		  GUTI_FA1 : GUTI_FA port map(a(1), b(1), c(1), c(2), sum(1));
		  GUTI_FA2 : GUTI_FA port map(a(2), b(2), c(2), c(3), sum(2));
        GUTI_FA3 : GUTI_FA port map(a(3), b(3), c(3), c(4), sum(3));
		  GUTI_FA4 : GUTI_FA port map(a(4), b(4), c(4), c(5), sum(4));
		  GUTI_FA5 : GUTI_FA port map(a(5), b(5), c(5), c(6), sum(5));
		  GUTI_FA6 : GUTI_FA port map(a(6), b(6), c(6), c(7), sum(6));
        GUTI_FA7 : GUTI_FA port map(a(7), b(7), c(7), c(8), sum(7));
        cout <= c(8);
end arch;
