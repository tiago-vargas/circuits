library IEEE;
use IEEE.std_logic_1164.all;

entity Half_Adder is
port (
	a, b: in  std_logic;
	c, s: out std_logic );
end Half_Adder;

architecture arch of Half_Adder is
begin
	c <= a and b;
	s <= a xor b;
end arch;
