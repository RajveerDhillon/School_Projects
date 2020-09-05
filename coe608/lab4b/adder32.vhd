library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity adder32 is
    Port ( a1 : in  STD_LOGIC_VECTOR(31 downto 0);
           b1 : in  STD_LOGIC_VECTOR(31 downto 0);
           cin1 : in  STD_LOGIC;
           sum1 : out  STD_LOGIC_VECTOR(31 downto 0);
			  cout1: out std_LOGIC);
end adder32;

architecture adder32_imp of adder32 is

component fulladder
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal wire: std_LOGIC_VECTOR(30 downto 0);

begin

F1:fulladder Port Map(a1(0),b1(0),cin1,sum1(0),wire(0));
F2:fulladder Port Map(a1(1),b1(1),wire(0),sum1(1),wire(1));
F3:fulladder Port Map(a1(2),b1(2),wire(1),sum1(2),wire(2));
F4:fulladder Port Map(a1(3),b1(3),wire(2),sum1(3),wire(3));
F5:fulladder Port Map(a1(4),b1(4),wire(3),sum1(4),wire(4));
F6:fulladder Port Map(a1(5),b1(5),wire(4),sum1(5),wire(5));
F7:fulladder Port Map(a1(6),b1(6),wire(5),sum1(6),wire(6));
F8:fulladder Port Map(a1(7),b1(7),wire(6),sum1(7),wire(7));
F9:fulladder Port Map(a1(8),b1(8),wire(7),sum1(8),wire(8));
F10:fulladder Port Map(a1(9),b1(9),wire(8),sum1(9),wire(9));
F11:fulladder Port Map(a1(10),b1(10),wire(9),sum1(10),wire(10));
F12:fulladder Port Map(a1(11),b1(11),wire(10),sum1(11),wire(11));
F13:fulladder Port Map(a1(12),b1(12),wire(11),sum1(12),wire(12));
F14:fulladder Port Map(a1(13),b1(13),wire(12),sum1(13),wire(13));
F15:fulladder Port Map(a1(14),b1(14),wire(13),sum1(14),wire(14));
F16:fulladder Port Map(a1(15),b1(15),wire(14),sum1(15),wire(15));
F17:fulladder Port Map(a1(16),b1(16),wire(15),sum1(16),wire(16));
F18:fulladder Port Map(a1(17),b1(17),wire(16),sum1(17),wire(17));
F19:fulladder Port Map(a1(18),b1(18),wire(17),sum1(18),wire(18));
F20:fulladder Port Map(a1(19),b1(19),wire(18),sum1(19),wire(19));
F21:fulladder Port Map(a1(20),b1(20),wire(19),sum1(20),wire(20));
F22:fulladder Port Map(a1(21),b1(21),wire(20),sum1(21),wire(21));
F23:fulladder Port Map(a1(22),b1(22),wire(21),sum1(22),wire(22));
F24:fulladder Port Map(a1(23),b1(23),wire(22),sum1(23),wire(23));
F25:fulladder Port Map(a1(24),b1(24),wire(23),sum1(24),wire(24));
F26:fulladder Port Map(a1(25),b1(25),wire(24),sum1(25),wire(25));
F27:fulladder Port Map(a1(26),b1(26),wire(25),sum1(26),wire(26));
F28:fulladder Port Map(a1(27),b1(27),wire(26),sum1(27),wire(27));
F29:fulladder Port Map(a1(28),b1(28),wire(27),sum1(28),wire(28));
F30:fulladder Port Map(a1(29),b1(29),wire(28),sum1(29),wire(29));
F31:fulladder Port Map(a1(30),b1(30),wire(29),sum1(30),wire(30));
F32:fulladder Port Map(a1(31),b1(31),wire(30),sum1(31),cout1);

end adder32_imp;