library IEEE;
use IEEE.std_logic_1164.all;

entity GUTI_mux2to1 is
    port(
	      a, b: in std_logic_vector(7 downto 0);
			sel: in std_logic;
			y: out std_logic_vector(7 downto 0));
end GUTI_mux2to1;

architecture GUTI_behavior of GUTI_mux2to1 is
begin
    process (sel, a, b)
	    begin
		     if (sel = '1') then
			      y <= b;
			  else
			      y <= a;
			  end if;
	 end process;
end GUTI_behavior;
