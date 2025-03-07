library ieee;
use ieee.std_logic_1164.all;
entity GUTI_RAMPORT is
    port(
	 address		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		HEX11: out STD_LOGIC_VECTOR(6 downto 0));
	 end GUTI_RAMPORT;
	 architecture arch1 of GUTI_RAMPORT is
    signal hex: std_logic_vector(3 downto 0);
component dec_to_hex is port (
	
		hex_digit: in std_logic_vector(3 downto 0);
		segment_a: out std_logic;
		segment_b: out std_logic;
		segment_c: out std_logic;
		segment_d: out std_logic;
		segment_e: out std_logic;
		segment_f: out std_logic;
		segment_g: out std_logic);
end component;
component RAMPORT1 is port(
address		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
end component;
begin
		Ram1: RAMPORT1 port map(address,clock,data,wren,hex);
		q<=hex;
    Hx0: dec_to_hex  port map(hex(3 downto 0), HEX11(0), HEX11(1), HEX11(2), HEX11(3),HEX11(4), HEX11(5), HEX11(6));
end arch1;
