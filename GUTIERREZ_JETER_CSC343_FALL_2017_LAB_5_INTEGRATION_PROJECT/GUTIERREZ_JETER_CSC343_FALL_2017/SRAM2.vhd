library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity Sram is
    port(
        DATA_OR_ADDR,SUBMIT,INPUT_WE: in std_logic;
		  INPUT: in std_logic_vector(7 downto 0);
		  SELECTOR: in std_logic_vector(1 downto 0);
        SRAM_ADDR: out std_logic_vector(19 downto 0);
        SRAM_DQ: inout std_logic_vector(15 downto 0);
        SRAM_CE_N,SRAM_OE_N,SRAM_WE_N,SRAM_UB_N,SRAM_LB_N: out std_logic;
        HEX11,HEX22,HEX33,HEX44,HEX55,HEX66,HEX77,HEX88: out STD_LOGIC_VECTOR(6 downto 0));
end Sram;
architecture arch of Sram is
    signal INPUT_temp: std_logic_vector(7 downto 0);
    signal Wenable,final,CLOCK: std_logic;
    signal hex,output,DATA: std_logic_vector(31 downto 0);
	 signal ABSOLUTE_ADDRESS: std_logic_vector (19 downto 0);
component dec_to_hex is port (
		hex_digit: in std_logic_vector(3 downto 0);
		seg_a: out std_logic;
		seg_b: out std_logic;
		seg_c: out std_logic;
		seg_d: out std_logic;
		seg_e: out std_logic;
		seg_f: out std_logic;
		seg_g: out std_logic);
end component;
begin
	 Wenable<=INPUT_WE;
    SRAM_WE_N <= not Wenable;
    SRAM_CE_N <= '0';
    SRAM_OE_N <= '0';
    SRAM_UB_N <= '0';
    SRAM_LB_N <= '0';
	 hex<=output;
	 process(CLOCK)
	 begin
	 if(DATA_OR_ADDR='1') then
	 if(Wenable='1')then
	 case SELECTOR is
	 when "00" =>
	 DATA(7 downto 0)<=INPUT;
when "01" =>
	 DATA(15 downto 8)<=INPUT;

when "10" =>
	 DATA(23 downto 16)<=INPUT;

when "11" =>
	 DATA(31 downto 24)<=INPUT;

when others=>null;
end case;
else
DATA<=(others=>'Z');
	 end if;
	 end if;
	 end process;
	 process(INPUT_WE)
	 begin
	 if(Wenable='0') then
	 case SELECTOR IS
	 when "00"=>
	 ABSOLUTE_ADDRESS(4 downto 0)<=INPUT(4 downto 0);
when "01"=>
	 ABSOLUTE_ADDRESS(9 downto 5)<=INPUT(4 downto 0);

when "10"=>
	 ABSOLUTE_ADDRESS(14 downto 10)<=INPUT(4 downto 0);

when "11"=>
	 ABSOLUTE_ADDRESS(19 downto 15)<=INPUT(4 downto 0);
when others =>
				NULL;
				end case;
				end if;
	 end process;
--	 process(final)  is
--	 begin
--	 case SUBMIT is 
--	 when '0'=>
	SRAM_ADDR<=ABSOLUTE_ADDRESS;
	SRAM_DQ<=DATA(15 downto 0);
	output(15 downto 0)<=SRAM_DQ;
--when '1'=>
SRAM_ADDR<=(ABSOLUTE_ADDRESS+"00000000000000000001");
			SRAM_DQ<=DATA(31 downto 16);
			output(31 downto 16)<=SRAM_DQ;
--when others=>null;
--end case;
--	end process;
			
			

Hx0: dec_to_hex  port map(hex(3 downto 0), HEX11(0), HEX11(1), HEX11(2), HEX11(3),HEX11(4), HEX11(5), HEX11(6));
Hx1: dec_to_hex port map (hex(7 downto 4), HEX22(0), HEX22(1), HEX22(2), HEX22(3),HEX22(4), HEX22(5), HEX22(6));
Hx2: dec_to_hex port map (hex(11 downto 8), HEX33(0), HEX33(1), HEX33(2), HEX33(3),HEX33(4), HEX33(5), HEX33(6));
Hx3: dec_to_hex port map (hex(15 downto 12), HEX44(0), HEX44(1), HEX44(2), HEX44(3),HEX44(4), HEX44(5), HEX44(6));
Hx4: dec_to_hex port map (hex(19 downto 16), HEX55(0), HEX55(1), HEX55(2), HEX55(3),HEX55(4), HEX55(5), HEX55(6));
Hx5: dec_to_hex port map (hex(23 downto 20), HEX66(0), HEX66(1), HEX66(2), HEX66(3),HEX66(4), HEX66(5), HEX66(6));
Hx6: dec_to_hex port map (hex(27 downto 24), HEX77(0), HEX77(1), HEX77(2), HEX77(3),HEX77(4), HEX77(5), HEX77(6));
Hx7: dec_to_hex port map (hex(31 downto 28), HEX88(0), HEX88(1), HEX88(2), HEX88(3),HEX88(4), HEX88(5), HEX88(6));
end arch;