library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity dec_to_hex is port (
	
		hex_digit: in std_logic_vector(3 downto 0);
		seg_a: out std_logic;
		seg_b: out std_logic;
		seg_c: out std_logic;
		seg_d: out std_logic;
		seg_e: out std_logic;
		seg_f: out std_logic;
		seg_g: out std_logic);
end dec_to_hex;

architecture s of dec_to_hex is 

	signal seg_data: std_logic_vector(6 downto 0);
	signal newD: std_logic_vector(3 downto 0);
	
begin 
	process(hex_digit)
 begin 
		case hex_digit is 
			when "0000" => 
				seg_data <= "1111110";
			when "0001" => 
				seg_data <= "0110000";
			when "0010" => 
				seg_data <= "1101101";
			when "0011" =>
				seg_data <= "1111001";
			when "0100" => 
				seg_data <= "0110011";
			when "0101" => 
				seg_data <= "1011011";
			when "0110" => 
				seg_data <= "1011111";
			when "0111" => 
				seg_data <= "1110000";
			when "1000" => 
				seg_data <= "1111111";
			when "1001" => 
				seg_data <= "1110011";
			when "1010" => 
				seg_data <= "1110111";
			when "1011" => 
				seg_data <= "0011111";
			when "1100" => 
				seg_data <= "1001110";
			when "1101" => 
				seg_data <= "0111101";
			when "1110" => 
				seg_data <= "1001111";
			when "1111" => 
				seg_data <= "1000111";
				when others => null;
end case;
end process;
		seg_a <= Not seg_data(6);
		seg_b <= Not seg_data(5);
		seg_c <= Not seg_data(4);
		seg_d <= Not seg_data(3);
		seg_e <= Not seg_data(2);
		seg_f <= Not seg_data(1);
		seg_g <= Not seg_data(0);
end s;


