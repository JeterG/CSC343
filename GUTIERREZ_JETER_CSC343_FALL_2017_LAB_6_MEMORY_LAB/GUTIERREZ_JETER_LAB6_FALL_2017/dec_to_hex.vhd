library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity dec_to_hex is
port(hex_digit: in std_logic_vector(3 downto 0);
segment_a,segment_b,segment_c,segment_d,segment_e,segment_f,segment_g : out std_logic);
end dec_to_hex;

architecture a of dec_to_hex is
signal segment_data : std_logic_vector (6 downto 0);
begin
process (Hex_digit)
Begin
case Hex_digit is 
When "0000" => 
segment_data <= "1111110";
When "0001" => 
segment_data <= "0110000";
When "0010" => 
segment_data <= "1101101";
When "0011" => 
segment_data <= "1111001";
When "0100" => 
segment_data <= "0110011";
When "0101" => 
segment_data <= "1011011";
When "0110" => 
segment_data <= "1011111";
When "0111" => 
segment_data <= "1110000";
When "1000" => 
segment_data <= "1111111";
When "1001" => 
segment_data <= "1110011";
When "1010" => 
segment_data <= "1110111";
When "1011" => 
segment_data <= "0011111";
When "1100" => 
segment_data <= "1001110";
When "1101" => 
segment_data <= "0111101";
When "1110" => 
segment_data <= "1001111";
When "1111" => 
segment_data <= "1000111";
end case;
end process;

segment_a <= NOT segment_data(6);
segment_b <= NOT segment_data(5);
segment_c <= NOT segment_data(4);
segment_d <= NOT segment_data(3);
segment_e <= NOT segment_data(2);
segment_f <= NOT segment_data(1);
segment_g <= NOT segment_data(0);

End a;
