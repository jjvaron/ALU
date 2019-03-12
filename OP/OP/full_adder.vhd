LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-----------------------------------------------------
ENTITY full_adder IS
    PORT(   X    : IN   STD_LOGIC;
	         Y    : IN   STD_LOGIC;
				CIN  : IN   STD_LOGIC;
				COUT : OUT  STD_LOGIC;
				S    : OUT  STD_LOGIC);
END ENTITY full_adder;
ARCHITECTURE gateLevel OF full_adder IS
BEGIN
   S     <= X XOR Y XOR CIN;
	COUT  <=(X AND Y) OR (X AND CIN) OR (Y AND CIN);
 END ARCHITECTURE gateLevel;  	