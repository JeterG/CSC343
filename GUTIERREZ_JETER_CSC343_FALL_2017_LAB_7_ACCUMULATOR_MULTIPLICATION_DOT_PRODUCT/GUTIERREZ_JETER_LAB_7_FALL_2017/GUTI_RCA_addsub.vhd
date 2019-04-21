library IEEE;--JETER GUTIERREZ MAY 10, 2017
use IEEE.std_logic_1164.all;
entity GUTI_RCA_addsub is
      port(a, b: in std_logic_vector(7 downto 0);
	      	cin: in std_logic;
				subtract: in std_logic;
				sum: out std_logic_vector(7 downto 0);
				cout: out std_logic);
end GUTI_RCA_addsub;
architecture arch of GUTI_RCA_addsub is
        component GUTI_mux2to1
		  port(
		       a, b:in std_logic_vector(7 downto 0 );
				 sel: in std_logic;
				 y: out std_logic_vector(7 downto 0));
		 end component;

		 component GUTI_RCA
		 port( a, b:in std_logic_vector(7 downto 0);
			 cin:in std_logic;
			 sum: out std_logic_vector(7 downto 0);
			 cout: out std_logic);
		end component;
		
		signal carry: std_logic;
		signal b_not: std_logic_vector(7 downto 0);
		signal b_actual: std_logic_vector(7 downto 0);

    	begin
		   b_not <= not b;
			carry <= cin;
			MUX_SUB:
	    		GUTI_mux2to1
			   	port map (b, b_not, subtract, b_actual);
			ADD0:
			   GUTI_RCA
				    port map (a, b_actual, carry, sum, cout);
end arch;
