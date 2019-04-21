library IEEE;--Jeter Gutierrez Due 9/13/2017
use IEEE.std_logic_1164.all;--Jeter Gutierrez Due 9/13/2017
entity GUTIERREZ_FULL_ADDER_G_P is--Jeter Gutierrez Due 9/13/2017
port( a, b, cin: in std_logic;--Jeter Gutierrez Due 9/13/2017
sum, g, p: out std_logic);--Jeter Gutierrez Due 9/13/2017
end GUTIERREZ_FULL_ADDER_G_P;--Jeter Gutierrez Due 9/13/2017
architecture arch of GUTIERREZ_FULL_ADDER_G_P is--Jeter Gutierrez Due 9/13/2017
begin--Jeter Gutierrez Due 9/13/2017
sum <= a xor b xor cin;--Jeter Gutierrez Due 9/13/2017
p <= a xor b;--Jeter Gutierrez Due 9/13/2017
g <= a and b;--Jeter Gutierrez Due 9/13/2017
end arch;--Jeter Gutierrez Due 9/13/2017