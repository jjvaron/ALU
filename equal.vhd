LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
------------------------------------------------------------------------
ENTITY equal IS
PORT ( x  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
       y  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 eq : OUT STD_LOGIC
		 );
	
END ENTITY;
------------------------------------------------------------------------
ARCHITECTURE fun OF equal IS
 signal eqs: std_LOGIC;
 --signal IG : std_LOGIC;
BEGIN

	  PROCESS (x,y,eqs)
	    begin
		   
			IF (x = y) THEN
			    eq <= '1';
			ELSE
			    eq <= '0';
			END IF;
	  END PROCESS;
	--IG  <= eqs; 
END ARCHITECTURE fun;