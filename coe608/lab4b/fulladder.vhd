library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fulladder;

architecture fulladder_imp of fulladder is

begin
sum<=(a xor b) xor cin;
cout<=(a and b) or ((a xor b)and cin);
end fulladder_imp;