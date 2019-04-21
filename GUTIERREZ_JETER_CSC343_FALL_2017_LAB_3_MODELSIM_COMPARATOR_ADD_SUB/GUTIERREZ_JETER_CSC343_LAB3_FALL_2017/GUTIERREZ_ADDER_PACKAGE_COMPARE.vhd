-------------------------------------------------------
  -- Design Name : GUTIERREZ_JETER_PACKAGES_COMPARE
  -- File Name   : GUTIERREZ_ADDER_PACKAGE_COMPARE.vhd
  -- Function    : Defines function for adders.
  -- Coder       : Jeter Gutierrez (VHDL)
  -------------------------------------------------------
  library IEEE;--Jeter Gutierrez Due 9/24/2017
	use IEEE.std_logic_1164.all;--Jeter Gutierrez Due 9/24/2017
  Package GUTIERREZ_ADDER_PACKAGE_COMPARE is--Jeter Gutierrez Due 9/24/2017
	--Jeter Gutierrez Due 9/24/2017
	component GUTIERREZ_ADDER_16_BITS is--Jeter Gutierrez Due 9/24/2017
	port ( cin: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(15 downto 0);--Jeter Gutierrez Due 9/24/2017
			 sum_prime: out std_logic_vector (15 downto 0);--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017
--Jeter Gutierrez Due 9/24/2017
component GUTIERREZ_MISTAKE4_ADDER is--Jeter Gutierrez Due 9/24/2017
	port ( cin: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez Due 9/24/2017
			 sum_prime: out std_logic_vector (3 downto 0);--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017
--Jeter Gutierrez Due 9/24/2017
component GUTIERREZ_ADDER_4_BITS is--Jeter Gutierrez Due 9/24/2017
	port ( cin: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez Due 9/24/2017
			 sum_prime: out std_logic_vector (3 downto 0);--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017
--Jeter Gutierrez Due 9/24/2017
component GUTIERREZ_FULL_ADDER_USING_GATES is--JETER GUTIERREZ September 24 2017
     port(a, b : in std_logic;--JETER GUTIERREZ September 24 2017
	       cin_prime : in std_logic;--JETER GUTIERREZ September 24 2017
			 sum : out std_logic;--JETER GUTIERREZ September 24 2017
			 cout_prime : out std_logic);--JETER GUTIERREZ September 24 2017
end component;--JETER GUTIERREZ September 24 2017

component GUTIERREZ_ADD_SUB_4_BITS is--Jeter Gutierrez Due 9/24/2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez Due 9/24/2017
			 S: out std_logic_vector (3 downto 0);--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017

component GUTIERREZ_ADD_SUB_16_BITS is--Jeter Gutierrez Due 9/24/2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(15 downto 0);--Jeter Gutierrez Due 9/24/2017
			 S: out std_logic_vector (15 downto 0);--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017

component GUTIERREZ_ADDER_32_BITS is--Jeter Gutierrez Due 9/24/2017
	port ( cin: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/24/2017
			 sum_prime: out std_logic_vector (31 downto 0);--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017
--Jeter Gutierrez Due 9/24/2017
component GUTIERREZ_ADD_SUB_32_BITS is--Jeter Gutierrez Due 9/24/2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/24/2017
			 S: out std_logic_vector (31 downto 0);--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017

component GUTIERREZ_COMPARE_4_BITS_ADVANCE is --Jeter Gutierrez Due 9/24/2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(3 downto 0);--Jeter Gutierrez Due 9/24/2017
			 S: out std_logic_vector (3 downto 0);--Jeter Gutierrez Due 9/24/2017
			 NEGATIVE: out std_logic;--Jeter Gutierrez Due 9/24/2017
			 Z: out std_logic;--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017

component GUTIERREZ_COMPARE_16_BITS_ADVANCE is --Jeter Gutierrez Due 9/24/2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(15 downto 0);--Jeter Gutierrez Due 9/24/2017
			 S: out std_logic_vector (15 downto 0);--Jeter Gutierrez Due 9/24/2017
			 NEGATIVE: out std_logic;--Jeter Gutierrez Due 9/24/2017
			 Z: out std_logic;--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017

component GUTIERREZ_COMPARE_32_BITS_ADVANCE is --Jeter Gutierrez Due 9/24/2017
	port ( SUBTRACT: in std_logic;--Jeter Gutierrez Due 9/24/2017
			 X, Y: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/24/2017
			 S: out std_logic_vector (31 downto 0);--Jeter Gutierrez Due 9/24/2017
			 NEGATIVE: out std_logic;--Jeter Gutierrez Due 9/24/2017
			 Z: out std_logic;--Jeter Gutierrez Due 9/24/2017
			 Cout, Overflow: out std_logic);--Jeter Gutierrez Due 9/24/2017
end component;--Jeter Gutierrez Due 9/24/2017

 end GUTIERREZ_ADDER_PACKAGE_COMPARE;--Jeter Gutierrez Due 9/24/2017