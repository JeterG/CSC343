library ieee;
use ieee.std_logic_1164.all;
entity GUTI_TREEMULTI is
	port(a, b : in std_logic_vector(7 downto 0);
		  product : out std_logic_vector(15 downto 0));
end GUTI_TREEMULTI;
architecture arch of GUTI_TREEMULTI is
	signal p0, p1, p2, p3, p4, p5, p6, p7 : std_logic_vector(7 downto 0);
	signal s101, s102, s103, s104, s105, s106, s107, s108, s109, s110, s111, s112, s113, s114,
			 s202, s203, s204, s205, s206, s207, s208, s209, s210, s211, s212, s213,
			 s303, s304, s305, s306, s307, s308, s309, s310, s311, s312,
			 s404, s405, s406, s407, s408, s409, s410, s411,
			 s505, s506, s507, s508, s509, s510,
			 s606, s607, s608, s609,
			 s707, s708: std_logic;
	signal c101, c102, c103, c104, c105, c106, c107, c108, c109, c110, c111, c112, c113, c114,
			 c202, c203, c204, c205, c206, c207, c208, c209, c210, c211, c212, c213,
			 c303, c304, c305, c306, c307, c308, c309, c310, c311, c312,
			 c404, c405, c406, c407, c408, c409, c410, c411,
			 c505, c506, c507, c508, c509, c510,
			 c606, c607, c608, c609,
			 c707, c708 : std_logic;
component GUTI_FA is--JETER GUTIERREZ MAY 10 2016
     port(a, b : in std_logic;--JETER GUTIERREZ MAY 10 2016
	       cin : in std_logic;--JETER GUTIERREZ MAY 10 2016
			 cout : out std_logic;--JETER GUTIERREZ MAY 10 2016
			 sum : out std_logic);--JETER GUTIERREZ MAY 10 2016
end component;--JETER GUTIERREZ MAY 10 2016
component GUTI_HA is
	port(a, b : in std_logic;
		  carry, sum: out std_logic);
end component;
	begin
		product(0) <= p0(0);
		product(1) <= s101;
		product(2) <= s202;
		product(3) <= s303;
		product(4) <= s404;
		product(5) <= s505;
		product(6) <= s606;
		product(7) <= s707;
		product(8) <= s708;
		product(9) <= s609;
		product(10) <= s510;
		product(11) <= s411;
		product(12) <= s312;
		product(13) <= s213;
		product(14) <= c114;
		product(15) <= s114;
		process(a, b)
			begin
				for i in 0 to 7 loop
					p0(i) <= A(i) and B(0);
					p1(i) <= A(i) and B(1);
					p2(i) <= A(i) and B(2);
					p3(i) <= A(i) and B(3);
					p4(i) <= A(i) and B(4);
					p5(i) <= A(i) and B(5);
					p6(i) <= A(i) and B(6);
					p7(i) <= A(i) and B(7);
				end loop;
		end process;
		HA101 : GUTI_HA
			port map (p0(1), p1(0), c101, s101);
		FA102 : GUTI_FA
			port map (p0(2), p1(1), c101, c102, s102);
		FA103 : GUTI_FA
			port map (p0(3), p1(2), c102, c103, s103);
		FA104 : GUTI_FA
			port map (p0(4), p1(3), c103, c104, s104);
		FA105 : GUTI_FA
			port map (p0(5), p1(4), c104, c105, s105);
		FA106 : GUTI_FA
			port map (p0(6), p1(5), c105, c106, s106);
		FA107 : GUTI_FA
			port map (p0(7), p1(6), c106, c107, s107);
		FA108 : GUTI_FA
			port map (p1(7), p2(6), c107, c108, s108);
		FA109 : GUTI_FA
			port map (p2(7), p3(6), c108, c109, s109);
		FA110 : GUTI_FA
			port map (p3(7), p4(6), c109, c110, s110);
		FA111 : GUTI_FA
			port map (p4(7), p5(6), c110, c111, s111);
		FA112 : GUTI_FA
			port map (p5(7), p6(6), c111, c112, s112);
		FA113 : GUTI_FA
			port map (p6(7), p7(6), c112, c113, s113);
		FA114 : GUTI_FA
			port map (p7(7), c113, c213, c114, s114);
		HA201 : GUTI_HA
			port map (s102, p2(0), c202, s202);
		FA202 : GUTI_FA
			port map (s103, p2(1), c202, c203, s203);
		FA203 : GUTI_FA
			port map (s104, p2(2), c203, c204, s204);
		FA204 : GUTI_FA
			port map (s105, p2(3), c204, c205, s205);
		FA205 : GUTI_FA
			port map (s106, p2(4), c205, c206, s206);
		FA206 : GUTI_FA
			port map (s107, p2(5), c206, c207, s207);
		FA207 : GUTI_FA
			port map (s108, p3(5), c207, c208, s208);
		FA208 : GUTI_FA
			port map (s109, p4(5), c208, c209, s209);
		FA209 : GUTI_FA
			port map (s110, p5(5), c209, c210, s210);
		FA210 : GUTI_FA
			port map (s111, p6(5), c210, c211, s211);
		FA211 : GUTI_FA
			port map (s112, p7(5), c211, c212, s212);
		FA212 : GUTI_FA
			port map (s113, c212, c312, c213, s213);
		HA301 : GUTI_HA
			port map (s203, p3(0), c303, s303);
		FA302 : GUTI_FA
			port map (s204, p3(1), c303, c304, s304);
		FA303 : GUTI_FA
			port map (s205, p3(2), c304, c305, s305);
		FA304 : GUTI_FA
			port map (s206, p3(3), c305, c306, s306);
		FA305 : GUTI_FA
			port map (s207, p3(4), c306, c307, s307);
		FA306 : GUTI_FA
			port map (s208, p4(4), c307, c308, s308);
		FA307 : GUTI_FA
			port map (s209, p5(4), c308, c309, s309);
		FA308 : GUTI_FA
			port map (s210, p6(4), c309, c310, s310);
		FA309 : GUTI_FA
			port map (s211, p7(4), c310, c311, s311);
		FA310 : GUTI_FA
			port map (s212, c311, c411, c312, s312);
		HA401 : GUTI_HA
			port map (s304, p4(0), c404, s404);
		FA402 : GUTI_FA
			port map (s305, p4(1), c404, c405, s405);
		FA403 : GUTI_FA
			port map (s306, p4(2), c405, c406, s406);
		FA404 : GUTI_FA
			port map (s307, p4(3), c406, c407, s407);
		FA405 : GUTI_FA
			port map (s308, p5(3), c407, c408, s408);
		FA406 : GUTI_FA
			port map (s309, p6(3), c408, c409, s409);
		FA407 : GUTI_FA
			port map (s310, p7(3), c409, c410, s410);
		FA408 : GUTI_FA
			port map (s311, c410, c510, c411, s411);
		HA501 : GUTI_HA
			port map (s405, p5(0), c505, s505);
		FA502 : GUTI_FA
			port map (s406, p5(1), c505, c506, s506);
		FA503 : GUTI_FA
			port map (s407, p5(2), c506, c507, s507);
		FA504 : GUTI_FA
			port map (s408, p6(2), c507, c508, s508);
		FA505 : GUTI_FA
			port map (s409, p7(2), c508, c509, s509);
		FA506 : GUTI_FA
			port map (s410, c509, c609, c510, s510);
		HA601 : GUTI_HA
			port map (S506, p6(0), c606, s606);
		FA602 : GUTI_FA
			port map (s507, p6(1), c606, c607, s607);
		FA603 : GUTI_FA
			port map (s508, p7(1), c607, c608, s608);
		FA604 : GUTI_FA
			port map (s509, c608, c708, c609, s609);
		HA701 : GUTI_HA
			port map (s607, p7(0), c707, s707);
		HA702 : GUTI_HA
			port map (s608, c707, c708, s708);
end arch;
