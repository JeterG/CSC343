library ieee;
use ieee.std_logic_1164.all;

entity GUTI_HA is
	port(a, b : in std_logic;
		  carry, sum: out std_logic);
end GUTI_HA;

architecture arch of GUTI_HA is
	begin
		carry <= a and b;
		sum <= a xor b;		
end arch;