LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE arch OF tb IS
	COMPONENT Half_Adder IS
		PORT
		( a, b: IN  	STD_LOGIC
		; c, s: OUT 	STD_LOGIC
		);
	END COMPONENT;

BEGIN
	-- FINISH LATER
END arch;