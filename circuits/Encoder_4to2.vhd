LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Encoder_4to2 IS
	PORT
	( i : IN  	STD_LOGIC_VECTOR(3 DOWNTO 0)
	; o : OUT 	STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END Encoder_4to2;

ARCHITECTURE arch OF Encoder_4to2 IS
BEGIN
	o <= "00" WHEN i = "0001" ELSE
	     "01" WHEN i = "0010" ELSE
	     "10" WHEN i = "0100" ELSE
	     "11" WHEN i = "1000" ELSE
	     "ZZ";
END arch;