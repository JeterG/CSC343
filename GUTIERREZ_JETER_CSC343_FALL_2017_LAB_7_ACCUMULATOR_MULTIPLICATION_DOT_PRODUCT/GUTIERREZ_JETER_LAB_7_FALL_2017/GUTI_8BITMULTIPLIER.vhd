library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GUTI_8BITMULTIPLIER is
port ( INPUT_X,INPUT_Y : in std_logic_vector(7 downto 0);
            PRODUCT : out std_logic_vector(15 downto 0));
end GUTI_8BITMULTIPLIER;

architecture DESIGN of GUTI_8BITMULTIPLIER is
begin
        product <= INPUT_X * INPUT_Y;
end DESIGN; 