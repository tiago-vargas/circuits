LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Parallel_Adder_4B IS
	PORT
	( a, b : IN  	STD_LOGIC_VECTOR(3 DOWNTO 0)
	; s    : OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0)
	; cout : OUT 	STD_LOGIC
	);
END Parallel_Adder_4B;

ARCHITECTURE arch OF Parallel_Adder_4B IS
	COMPONENT Half_Adder IS
		PORT
		( a, b    : IN  	STD_LOGIC
		; cout, s : OUT 	STD_LOGIC
		);
	END COMPONENT;

	COMPONENT Full_Adder IS
		PORT
		( a, b, cin : IN  	STD_LOGIC
		; cout, s   : OUT 	STD_LOGIC
		);
	END COMPONENT;

	SIGNAL c0, c1, c2 : 	STD_LOGIC;
BEGIN
	ha : Half_Adder PORT MAP
		( a    => a(0)
		, b    => b(0)
		, cout => c0
		, s    => s(0)
		);
	fa1: Full_Adder PORT MAP
		( a    => a(1)
		, b    => b(1)
		, cin  => c0
		, cout => c1
		, s    => s(1)
		);
	fa2: Full_Adder PORT MAP
		( a    => a(2)
		, b    => b(2)
		, cin  => c1
		, cout => c2
		, s    => s(2)
		);
	fa3: Full_Adder PORT MAP
		( a    => a(3)
		, b    => b(3)
		, cin  => c2
		, cout => cout
		, s    => s(3)
		);
END arch;