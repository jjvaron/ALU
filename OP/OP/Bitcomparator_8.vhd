LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
------------------------------------------------------------------------
ENTITY Bitcomparator_8 IS
PORT ( x  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
       y  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 ls : OUT STD_LOGIC);
END ENTITY;
------------------------------------------------------------------------
ARCHITECTURE functional OF Bitcomparator_8 IS
BEGIN
     ls <= '1' when x < y else '0';  
END ARCHITECTURE;