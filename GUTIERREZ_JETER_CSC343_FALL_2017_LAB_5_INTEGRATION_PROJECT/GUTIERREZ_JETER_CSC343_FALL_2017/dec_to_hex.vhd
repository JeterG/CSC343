library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity dec_to_hex is
port(hex_digit: in std_logic_vector(3 downto 0);
a,b,c,d,e,f,g : out std_logic);
end dec_to_hex;
architecture design of dec_to_hex is
signal data : std_logic_vector (6 downto 0);
begin
process (Hex_digit)
Begin
case Hex_digit is 
When "0000" => data <= "1111110";
When "0001" => data <= "0110000";
When "0010" => data <= "1101101";
When "0011" => data <= "1111001";
When "0100" => data <= "0110011";
When "0101" => data <= "1011011";
When "0110" => data <= "1011111";
When "0111" => data <= "1110000";
When "1000" => data <= "1111111";
When "1001" => data <= "1110011";
When "1010" => data <= "1110111";
When "1011" => data <= "0011111";
When "1100" => data <= "1001110";
When "1101" => data <= "0111101";
When "1110" => data <= "1001111";
When "1111" => data <= "1000111";
end case;
end process;
a <= NOT data(6);
b <= NOT data(5);
c <= NOT data(4);
d <= NOT data(3);
e <= NOT data(2);
f <= NOT data(1);
g <= NOT data(0);
End design;
