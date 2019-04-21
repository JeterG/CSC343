library IEEE;--Jeter Gutierrez Due 9/13/2017
use IEEE.std_logic_1164.all;--Jeter Gutierrez Due 9/13/2017
entity GUTIERREZ_mux32to1 is--Jeter Gutierrez Due 9/13/2017
port(--Jeter Gutierrez Due 9/13/2017
a, b: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
sel: in std_logic;--Jeter Gutierrez Due 9/13/2017
y: out std_logic_vector(31 downto 0));--Jeter Gutierrez Due 9/13/2017
end GUTIERREZ_mux32to1;--Jeter Gutierrez Due 9/13/2017
architecture behavior of GUTIERREZ_mux32to1 is--Jeter Gutierrez Due 9/13/2017
begin--Jeter Gutierrez Due 9/13/2017
process (sel, a, b)--Jeter Gutierrez Due 9/13/2017
begin--Jeter Gutierrez Due 9/13/2017
if (sel = '1') then--Jeter Gutierrez Due 9/13/2017
y <= b;--Jeter Gutierrez Due 9/13/2017
else--Jeter Gutierrez Due 9/13/2017
y <= a;--Jeter Gutierrez Due 9/13/2017
end if;--Jeter Gutierrez Due 9/13/2017
end process;--Jeter Gutierrez Due 9/13/2017
end behavior;--Jeter Gutierrez Due 3/27/2017--Jeter Gutierrez Due 9/13/2017