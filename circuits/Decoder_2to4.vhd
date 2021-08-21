LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Decoder_2to4 IS
	PORT
	( i : IN  	STD_LOGIC_VECTOR(1 DOWNTO 0)
	; o : OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Decoder_2to4;

ARCHITECTURE arch OF Decoder_2to4 IS
BEGIN
	o <= "0001" WHEN i = "00" ELSE
	     "0010" WHEN i = "01" ELSE
	     "0100" WHEN i = "10" ELSE
	     "1000" WHEN i = "11" ELSE;
END arch;