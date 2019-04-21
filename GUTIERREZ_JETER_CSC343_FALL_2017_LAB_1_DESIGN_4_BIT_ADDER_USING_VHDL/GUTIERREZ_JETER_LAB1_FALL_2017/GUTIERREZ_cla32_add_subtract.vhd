library IEEE;--Jeter Gutierrez Due 9/13/2017
use IEEE.std_logic_1164.all;--Jeter Gutierrez Due 9/13/2017
entity GUTIERREZ_cla32_add_subtract is--Jeter Gutierrez Due 9/13/2017
port(a, b: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
cin: in std_logic;--Jeter Gutierrez Due 9/13/2017
subtract: in std_logic;--Jeter Gutierrez Due 9/13/2017
sum: out std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
cout: out std_logic;--Jeter Gutierrez Due 9/13/2017
overflow: out std_logic);--Jeter Gutierrez Due 9/13/2017
end GUTIERREZ_cla32_add_subtract;--Jeter Gutierrez Due 9/13/2017
architecture cla32_add_subtract_arch of GUTIERREZ_cla32_add_subtract is--Jeter Gutierrez Due 9/13/2017
component GUTIERREZ_mux32to1--Jeter Gutierrez Due 9/13/2017
port(a, b: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
sel: in std_logic;--Jeter Gutierrez Due 9/13/2017
y: out std_logic_vector(31 downto 0));--Jeter Gutierrez Due 9/13/2017
end component;--Jeter Gutierrez Due 9/13/2017
component GUTIERREZ_cla32--Jeter Gutierrez Due 9/13/2017
port( a, b: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
carryin: in std_logic;--Jeter Gutierrez Due 9/13/2017
sum: out std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
cgout, cpout, overflow: out std_logic);--Jeter Gutierrez Due 9/13/2017
end component;--Jeter Gutierrez Due 9/13/2017
signal carry: std_logic;--Jeter Gutierrez Due 9/13/2017
signal b_not: std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
signal b_actual: std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
begin--Jeter Gutierrez Due 9/13/2017
b_not <= not b;--Jeter Gutierrez Due 9/13/2017
carry <= cin;--Jeter Gutierrez Due 9/13/2017
MUX_SUB:--Jeter Gutierrez Due 9/13/2017
GUTIERREZ_mux32to1--Jeter Gutierrez Due 9/13/2017
port map (b, b_not, subtract, b_actual);--Jeter Gutierrez Due 9/13/2017
ADD0:--Jeter Gutierrez Due 9/13/2017
GUTIERREZ_cla32--Jeter Gutierrez Due 9/13/2017
port map (a, b_actual, carry, sum, cout, open, overflow);--Jeter Gutierrez Due 9/13/2017
end cla32_add_subtract_arch;--Jeter Gutierrez Due 9/13/2017