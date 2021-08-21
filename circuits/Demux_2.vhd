LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Demux_2 IS
	PORT
	( i   : IN  	STD_LOGIC
	; sel : IN  	STD_LOGIC
	; o   : OUT 	STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END Demux_2;

ARCHITECTURE arch OF Demux_2 IS
BEGIN
	o <= '0' & i WHEN sel = '0' ELSE i & '0' -- is the syntax right?
END arch;