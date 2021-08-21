LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Mux_2 IS
	PORT
	( i   : IN  	STD_LOGIC_VECTOR(1 DOWNTO 0)
	; sel : IN  	STD_LOGIC
	; o   : OUT 	STD_LOGIC
	);
END Mux_2;

ARCHITECTURE arch OF Mux_2 IS
BEGIN
	o <= i(0) WHEN sel = '0' ELSE i(1);
END arch;