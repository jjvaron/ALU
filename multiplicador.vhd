--LIBRARY IEEE;
--USE ieee.std_logic_1164.all;
--USE ieee.numeric_std.all;
-------------------------------------------------------------
--ENTITY multiplicador IS
--   PORT(   A          :  IN    STD_LOGIC_VECTOR(7 DOWNTO 0);
--           B          :  IN    STD_LOGIC_VECTOR(7 DOWNTO 0);
--           product_out:  OUT   STD_LOGIC_VECTOR(15 DOWNTO 0));
--END ENTITY multiplicador;
-------------------------------------------------------------
--ARCHITECTURE functional OF multiplicador IS
--   SIGNAL  i,j      : integer;
--	SIGNAL  AA,BB    : STD_LOGIC_VECTOR(7 DOWNTO 0);
--	SIGNAL  As,Bs    : STD_LOGIC_VECTOR(7 DOWNTO 0);
--	SIGNAL  product  : STD_LOGIC_VECTOR(15 DOWNTO 0);
----	SIGNAL  temp     : STD_LOGIC;
--BEGIN 
--
----bucle1: FOR i IN 1 TO 8 LOOP
--    PROCESS(i,j,product)
--	 BEGIN
--	   i <= 0 ;
--		
--		AA <= A;    --"00000000" &
--      IF (i < 9) THEN
--           j <= 0;
----       bucle2: LOOP            temp <= B[j];
--         IF (B(j) = '1') THEN
--			    product <= std_LOGIC_VECTOR(unsigned(AA)+unsigned(product)); --
--			ELSE
-- 				 Bs <=          shift_right(unsigned(BB),1);   --'0' & BB;
--         END IF;
--			
--			j <= j+1;
--			i <= i+1;
----       END LOOP bucle2;
----     END LOOP bucle1;
--	   ELSE
--	       product <= product;
--	   END IF;
--	END PROCESS;
--	
--	product_out <= product;
--	  
--END ARCHITECTURE functional;