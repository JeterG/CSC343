-------------------------------------------------------
  -- Design Name : GUTIERREZ_JETER_PACKAGES
  -- File Name   : GUTIERREZ_ADDER_PACKAGE.vhd
  -- Function    : Defines function for adders.
  -- Coder       : Jeter Gutierrez (VHDL)
  -------------------------------------------------------
  library IEEE;--Jeter Gutierrez Due 9/13/2017
	use IEEE.std_logic_1164.all;--Jeter Gutierrez Due 9/13/2017
  Package GUTIERREZ_ADDER_PACKAGE is--Jeter Gutierrez Due 9/13/2017
	component GUTIERREZ_FULL_ADDER_G_P is--Jeter Gutierrez Due 9/13/2017
	port( a, b, cin: in std_logic;--Jeter Gutierrez Due 9/13/2017
		sum, g, p: out std_logic);--Jeter Gutierrez Due 9/13/2017
	end component;--Jeter Gutierrez Due 9/13/2017
	
	component GUTIERREZ_CLA_LOGIC_32 is--Jeter Gutierrez Due 9/13/2017
port(--Jeter Gutierrez Due 9/13/2017
G, P: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
CIN: in std_logic;--Jeter Gutierrez Due 9/13/2017
C_Out: out std_logic_vector(30 downto 0); -- “internal” carry--Jeter Gutierrez Due 9/13/2017
CGOUT, CPOUT: out std_logic);--Jeter Gutierrez Due 9/13/2017
end component;--Jeter Gutierrez Due 9/13/2017

component GUTIERREZ_cla32 is -- 4-bit CLA structural model: top component--Jeter Gutierrez Due 9/13/2017
port( a, b: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
carryin: in std_logic;--Jeter Gutierrez Due 9/13/2017
sum: out std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
cgout, cpout, overflow: out std_logic);--Jeter Gutierrez Due 9/13/2017
end component;--Jeter Gutierrez Due 9/13/2017

component GUTIERREZ_mux32to1 is--Jeter Gutierrez Due 9/13/2017
port(--Jeter Gutierrez Due 9/13/2017
a, b: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
sel: in std_logic;--Jeter Gutierrez Due 9/13/2017
y: out std_logic_vector(31 downto 0));--Jeter Gutierrez Due 9/13/2017
end component;--Jeter Gutierrez Due 9/13/2017

component GUTIERREZ_cla32_add_subtract is--Jeter Gutierrez Due 9/13/2017
port(a, b: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
cin: in std_logic;--Jeter Gutierrez Due 9/13/2017
subtract: in std_logic;--Jeter Gutierrez Due 9/13/2017
sum: out std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
cout: out std_logic;--Jeter Gutierrez Due 9/13/2017
overflow: out std_logic);--Jeter Gutierrez Due 9/13/2017
end component;--Jeter Gutierrez Due 9/13/2017

component GUTIERREZ_HALF_ADDER is--Jeter Gutierrez September 13 ,2017
  port(A,   B:     in  std_logic ;--Jeter Gutierrez September 13 ,2017
       SUM, CARRY: out std_logic);--Jeter Gutierrez September 13 ,2017
end component;

component GUTIERREZ_FULL_ADDER_USING_GATES is--JETER GUTIERREZ September 31 2017
     port(a, b : in std_logic;--JETER GUTIERREZ September 13 2017
	       cin : in std_logic;--JETER GUTIERREZ September 13 2017
			 cout : out std_logic;--JETER GUTIERREZ September 13 2017
			 sum : out std_logic);--JETER GUTIERREZ September 13 2017
end component;

component GUTIERREZ_FULL_ADDER_USING_HALF_ADDER is--JETER GUTIERREZ September 13 2017
  port(A, B, CIN: in  std_logic;--JETER GUTIERREZ September 13 2017
       SUM, COUT: out std_logic);--JETER GUTIERREZ September 13 2017
end component;

component GUTIERREZ_FOUR_BIT_ADDER is--JETER GUTIERREZ September 13 2017
port(a, b : in std_logic_vector(3 downto 0);--JETER GUTIERREZ September 13 2017
cout : out std_logic;--JETER GUTIERREZ September 13 2017
sum : out std_logic_vector(3 downto 0));--JETER GUTIERREZ September 13 2017
end component;
 end GUTIERREZ_ADDER_PACKAGE;