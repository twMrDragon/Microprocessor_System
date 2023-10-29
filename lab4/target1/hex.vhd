LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY hex IS
	PORT (
		I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		O : OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END hex;

ARCHITECTURE func OF hex IS
BEGIN
	O(0) <= (NOT I(3) AND NOT I(2) AND NOT I(1) AND I(0)) OR (I(3) AND NOT I(2) AND I(1) AND I(0)) OR (I(2) AND NOT I(1) AND NOT I(0)) OR (I(3) AND I(2) AND NOT I(1));
	O(1) <= (NOT I(3) AND I(2) AND NOT I(1) AND I(0)) OR (I(2) AND I(1) AND NOT I(0)) OR (I(3) AND I(2) AND NOT I(0)) OR (I(3) AND I(1) AND I(0));
	O(2) <= (NOT I(3) AND NOT I(2) AND I(1) AND NOT I(0)) OR (I(3) AND I(2) AND NOT I(0)) OR (I(3) AND I(2) AND I(1));
	O(3) <= (NOT I(2) AND NOT I(1) AND I(0)) OR (NOT I(3) AND I(2) AND NOT I(1) AND NOT I(0)) OR (I(2) AND I(1) AND I(0)) OR (I(3) AND NOT I(2) AND I(1) AND NOT I(0));
	O(4) <= (NOT I(3) AND I(0)) OR(NOT I(3) AND I(2) AND NOT I(1)) OR (NOT I(2) AND NOT I(1) AND I(0));
	O(5) <= (NOT I(3) AND NOT I(2) AND I(0)) OR (NOT I(3) AND NOT I(2) AND I(1)) OR (NOT I(3) AND I(1) AND I(0)) OR (I(3) AND I(2) AND NOT I(1));
	O(6) <= (NOT I(3) AND NOT I(2) AND NOT I(1)) OR (NOT I(3) AND I(2) AND I(1) AND I(0));
END func;