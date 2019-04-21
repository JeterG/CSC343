library IEEE;--Jeter Gutierrez Due 3/27/2017
use IEEE.std_logic_1164.all;--Jeter Gutierrez Due 9/13/2017
entity GUTIERREZ_CLA_LOGIC_32 is--Jeter Gutierrez Due 9/13/2017
port(--Jeter Gutierrez Due 9/13/2017
G, P: in std_logic_vector(31 downto 0);--Jeter Gutierrez Due 9/13/2017
CIN: in std_logic;--Jeter Gutierrez Due 9/13/2017
C_Out: out std_logic_vector(30 downto 0); -- “internal” carry--Jeter Gutierrez Due 9/13/2017
CGOUT, CPOUT: out std_logic);--Jeter Gutierrez Due 9/13/2017
end GUTIERREZ_CLA_LOGIC_32;--Jeter Gutierrez Due 9/13/2017
architecture arch of GUTIERREZ_CLA_LOGIC_32 is--Jeter Gutierrez Due 9/13/2017
signal C :std_logic_vector(30 downto 0);--Jeter Gutierrez Due 9/13/2017
begin--Jeter Gutierrez Due 9/13/2017
C(0) <= G(0) or (P(0) and CIN);--Jeter Gutierrez Due 9/13/2017
C(1) <= G(1) or (P(1) and C(0));--Jeter Gutierrez Due 9/13/2017
C(2) <= G(2) or (P(2) and C(1));--Jeter Gutierrez Due 9/13/2017
C(3) <= G(3) or (P(3) and C(2));--Jeter Gutierrez Due 9/13/2017
C(4) <= G(4) or (P(4) and C(3));--Jeter Gutierrez Due 9/13/2017
C(5) <= G(5) or (P(5) and C(4));--Jeter Gutierrez Due 9/13/2017
C(6) <= G(6) or (P(6) and C(5));--Jeter Gutierrez Due 9/13/2017
C(7) <= G(7) or (P(7) and C(6));--Jeter Gutierrez Due 9/13/2017
C(8) <= G(8) or (P(8) and C(7));--Jeter Gutierrez Due 9/13/2017
C(9) <= G(9) or (P(9) and C(8));--Jeter Gutierrez Due 9/13/2017
C(10) <= G(10) or (P(10) and C(9));--Jeter Gutierrez Due 9/13/2017
C(11) <= G(11) or (P(11) and C(10));--Jeter Gutierrez Due 9/13/2017
C(12) <= G(12) or (P(12) and C(11));--Jeter Gutierrez Due 9/13/2017
C(13) <= G(13) or (P(13) and C(12));--Jeter Gutierrez Due 9/13/2017
C(14) <= G(14) or (P(14) and C(13));--Jeter Gutierrez Due 9/13/2017
C(15) <= G(15) or (P(15) and C(14));--Jeter Gutierrez Due 9/13/2017
C(16) <= G(16) or (P(16) and C(15));--Jeter Gutierrez Due 9/13/2017
C(17) <= G(17) or (P(17) and C(16));--Jeter Gutierrez Due 9/13/2017
C(18) <= G(18) or (P(18) and C(17));--Jeter Gutierrez Due 9/13/2017
C(19) <= G(19) or (P(19) and C(18));--Jeter Gutierrez Due 9/13/2017
C(20) <= G(20) or (P(20) and C(19));--Jeter Gutierrez Due 9/13/2017
C(21) <= G(21) or (P(21) and C(20));--Jeter Gutierrez Due 9/13/2017
C(22) <= G(22) or (P(22) and C(21));--Jeter Gutierrez Due 9/13/2017
C(23) <= G(23) or (P(23) and C(22));--Jeter Gutierrez Due 9/13/2017
C(24) <= G(24) or (P(24) and C(23));--Jeter Gutierrez Due 9/13/2017
C(25) <= G(25) or (P(25) and C(24));--Jeter Gutierrez Due 9/13/2017
C(26) <= G(26) or (P(26) and C(25));--Jeter Gutierrez Due 9/13/2017
C(27) <= G(27) or (P(27) and C(26));--Jeter Gutierrez Due 9/13/2017
C(28) <= G(28) or (P(28) and C(27));--Jeter Gutierrez Due 9/13/2017
C(29) <= G(29) or (P(29) and C(28));--Jeter Gutierrez Due 9/13/2017
C(30) <= G(30) or (P(30) and C(29));--Jeter Gutierrez Due 9/13/2017
C_Out <= C;--Jeter Gutierrez Due 9/13/2017
CGOUT<= G(31) or (P(31) and C(30));--Jeter Gutierrez Due 9/13/2017
CPOUT<= (P(31) and P(30) and P(29) and P(28) and P(27) and P(26) and P(25) and P(24) and P(23) and P(22) and P(21) and P(20) and P(19) and P(18) and P(17) and P(16) and P(15) and P(14) and P(13) and P(12) and P(11) and P(10) and P(9) and P(8) and P(7) and P(6) and P(5) and P(4) and P(3) and P(2) and P(1) and P(0));--Jeter Gutierrez Due 9/13/2017
end arch;--Jeter Gutierrez Due 9/13/2017