library IEEE; 
use IEEE.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ANDOP IS
PORT ( x  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
   y  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
   a  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END ENTITY;
ARCHITECTURE gatelevel OF ANDOP IS
BEGIN
            a <= x AND y ;
   
END ARCHITECTURE; 