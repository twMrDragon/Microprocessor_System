LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.lab3_package.ALL;

ENTITY BCD2 IS
	PORT (
		A, B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		hex0, hex1, hex2 : OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END BCD2;

ARCHITECTURE func OF BCD2 IS
	SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL C : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	-- 4 bits BCD 加法器，總共兩位數
	BCDStage0 : BCDAdd PORT MAP('0', A(3 DOWNTO 0), B(3 DOWNTO 0), S(3 DOWNTO 0), C(0));
	BCDStage1 : BCDAdd PORT MAP(C(0), A(7 DOWNTO 4), B(7 DOWNTO 4), S(7 DOWNTO 4), C(1));

	-- 七段顯示器顯示
	hexStage0 : hex PORT MAP(S(3 DOWNTO 0), hex0);
	hexStage1 : hex PORT MAP(S(7 DOWNTO 4), hex1);
	hexStage2 : hex PORT MAP("000" & C(1), hex2);
END func;