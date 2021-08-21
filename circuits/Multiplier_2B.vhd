LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplier_2B IS
	PORT
	( a, b : IN  	STD_LOGIC_VECTOR(1 DOWNTO 0)
	; m    : OUT 	STD_LOGIC_VECTOR(2 DOWNTO 0)
	; cout : OUT 	STD_LOGIC
	);
END Multiplier_2B;

ARCHITECTURE arch OF Multiplier_2B IS
	COMPONENT Half_Adder IS
		PORT
		( a, b    : IN  	STD_LOGIC
		; cout, s : OUT 	STD_LOGIC
		);
	END COMPONENT;

	SIGNAL c1 : 	STD_LOGIC;
BEGIN
	m(0) <= a(0) AND b(0);

	ha1 : Half_Adder PORT MAP
		( a    => a(1) AND b(0)
		, b    => a(0) AND b(1)
		, cout => c1
		, s    => m(1)
		);

	ha2 : Half_Adder PORT MAP
		( a    => c1
		, b    => a(1) AND b(1)
		, cout => cout
		, s    => m(2)
		);
END arch;