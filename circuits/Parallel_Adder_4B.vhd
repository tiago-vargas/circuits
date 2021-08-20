LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Full_Adder IS
	PORT
	( a, b, c: IN  	STD_LOGIC
	; cout, s: OUT 	STD_LOGIC
	);
END Full_Adder;

ARCHITECTURE arch OF Full_Adder IS
	COMPONENT Full_Adder IS
		PORT
		( a, b, c: IN  	STD_LOGIC
		; cout, s: OUT 	STD_LOGIC
		);
	END COMPONENT;
BEGIN
	-- fa: Full_Adder PORT MAP()
	-- FINISH LATER

	s    <= a xor b xor c;
	cout <= (a and b) or (a or c) or (b or c);
END arch;