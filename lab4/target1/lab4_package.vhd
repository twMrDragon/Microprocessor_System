LIBRARY IEEE;
USE IEEE.sTD_LOGIC_1164.ALL;

PACKAGE lab4_package IS
	COMPONENT fullAdd
		PORT (
			Cin, x, y : IN STD_LOGIC;
			s, Cout : OUT STD_LOGIC
		);
	END COMPONENT fullAdd;

	COMPONENT hex
		PORT (
			I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			O : OUT STD_LOGIC_VECTOR(0 TO 6)
		);
	END COMPONENT hex;

	COMPONENT ALU
		PORT (
			a, b : IN STD_LOGIC;
			setLessThan : IN STD_LOGIC;
			operation : IN STD_LOGIC_VECTOR(0 TO 3);
			cin : IN STD_LOGIC;
			result : OUT STD_LOGIC;
			cout : OUT STD_LOGIC
		);
	END COMPONENT ALU;

	COMPONENT mux2to1
		PORT (
			w1, w0 : IN STD_LOGIC;
			s : IN STD_LOGIC;
			f : OUT STD_LOGIC
		);
	END COMPONENT mux2to1;

	COMPONENT mux4to1
		PORT (
			w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s1, s0 : IN STD_LOGIC;
			f : OUT STD_LOGIC
		);
	END COMPONENT mux4to1;
END lab4_package;