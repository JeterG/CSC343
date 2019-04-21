library ieee;
use ieee.std_logic_1164.all;
entity GUTI_Sram is
    port(
		  INPUT_ADDR: in std_logic_vector(7 downto 0);
		  INPUT_DATA: in std_logiC_vector(7 downto 0);
		  INPUT_WE: in std_logic;
        LEDR: out std_logic_vector(15 downto 0);---output
        SRAM_ADDR: out std_logic_vector(19 downto 0);
        SRAM_DQ: inout std_logic_vector(15 downto 0);
        SRAM_CE_N: out std_logic;
        SRAM_OE_N: out std_logic;
        SRAM_WE_N: out std_logic;
        SRAM_UB_N: out std_logic;
        SRAM_LB_N: out std_logic;
        HEX11,HEX22,HEX33,HEX44: out STD_LOGIC_VECTOR(6 downto 0));
end GUTI_Sram;
architecture arch of GUTI_Sram is
    signal address: std_logic_vector(7 downto 0);
    signal data: std_logic_vector(7 downto 0);
    signal output: std_logic_vector(15 downto 0);
    signal Wenable: std_logic;
    signal hex: std_logic_vector(15 downto 0);
component dec_to_hex is port (
		hex_digit: in std_logic_vector(3 downto 0);
		segment_a,segment_b,segment_c,segment_d,segment_e,segment_f,segment_g: out std_logic);
end component;
begin
	 Wenable<=INPUT_WE;
	 address <=INPUT_ADDR;
	 data <= INPUT_DATA when Wenable = '1' else (others => 'Z');
    LEDR(15 downto 0)<= output;-- use 7 segment Display
    hex <= output;
    SRAM_WE_N <= not Wenable;
    SRAM_CE_N <= '0';
    SRAM_OE_N <= '0';
    SRAM_UB_N <= '0';
    SRAM_LB_N <= '0';
    SRAM_ADDR(19 downto 8) <= (others => '0');---set unused ports to 0
    SRAM_ADDR(7 downto 0) <= address;--assign address to first 8 ports
    SRAM_DQ(15 downto 8) <= (others => '0');
    SRAM_DQ(7 downto 0) <= data; --assign data to register

    output <= SRAM_DQ(15 downto 0);

    Hx0: dec_to_hex  port map(hex(3 downto 0), HEX11(0), HEX11(1), HEX11(2), HEX11(3),HEX11(4), HEX11(5), HEX11(6));
    Hx1: dec_to_hex port map (hex(7 downto 4), HEX22(0), HEX22(1), HEX22(2), HEX22(3),HEX22(4), HEX22(5), HEX22(6));
	 Hx2: dec_to_hex port map (hex(11 downto 8), HEX33(0), HEX33(1), HEX33(2), HEX33(3),HEX33(4), HEX33(5), HEX33(6));
	 Hx3: dec_to_hex port map (hex(15 downto 12), HEX44(0), HEX44(1), HEX44(2), HEX44(3),HEX44(4), HEX44(5), HEX44(6));

end arch;
