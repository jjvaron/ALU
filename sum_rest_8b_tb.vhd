LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-------------------------------------
ENTITY sum_rest_8b_tb IS                    --IMPORTANTE: La entidad debe estar vacìa
END ENTITY sum_rest_8b_tb;
-------------------------------------
ARCHITECTURE testbench OF sum_rest_8b_tb IS
	                                          -- diseño de la arquitectura
															-- declaraciòn de las señales del TESTBENCH
	SIGNAL	X_tb, Y_tb : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL   SW_1_tb    : STD_LOGIC;                 
	SIGNAL   COUT_tb    : STD_LOGIC;                     
	SIGNAL   S_tb       : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL   OVERFLOW_tb       : STD_LOGIC;--_VECTOR (3 DOWNTO 0);
--	SIGNAL   operacion_tb       : STD_LOGIC_VECTOR (2 DOWNTO 0);
BEGIN

	DUT:	ENTITY work.sum_rest_8b           --llamado de la funciòn, se asignan a las entradas 
	PORT MAP(		                          --y salidas las señales que se crearon en la arquitectura
		      X    => X_tb, 					
		      Y    => Y_tb, 					
		      SW_1 => SW_1_tb,
			--	COUT => COUT_tb,
				S    => S_tb,
				OVERFLOW => OVERFLOW_tb);
	

	signal_generation: PROCESS
	BEGIN
      
--SUMA
--      operacion_tb <= "000";		
      X_tb <=   "10000011";
		Y_tb <=   "10001001";
		SW_1_tb <= '0';
		WAIT FOR 200 ns;
      
	--	operacion_tb <= "000";
		X_tb <=   "10000011";
		Y_tb <=   "10001001";
		SW_1_tb <= '0';
		WAIT FOR 200 ns;
--RESTA

      X_tb <=   "10000011";
		Y_tb <=   "11100111";
		SW_1_tb <= '1';
	   WAIT FOR 200 ns;

      X_tb <=   "00001111";
		Y_tb <=   "10000000";
		SW_1_tb <= '1';
	   WAIT FOR 200 ns;

		
	END PROCESS signal_generation;

END ARCHITECTURE testbench;




--LIBRARY IEEE;
--USE IEEE.STD_LOGIC_1164.ALL;
---------------------------------------
--ENTITY sum_rest_8b_tb IS                    --IMPORTANTE: La entidad debe estar vacìa
--END ENTITY sum_rest_8b_tb;
---------------------------------------
--ARCHITECTURE testbench OF sum_rest_8b_tb IS
--	                                          -- diseño de la arquitectura
--															-- declaraciòn de las señales del TESTBENCH
--	SIGNAL	X_tb, Y_tb : STD_LOGIC_VECTOR(7 DOWNTO 0);
--	SIGNAL   SW_1_tb    : STD_LOGIC;                 
--	SIGNAL   COUT_tb    : STD_LOGIC;                     
--	SIGNAL   S_tb       : STD_LOGIC_VECTOR (7 DOWNTO 0);
--	
--BEGIN
--
--	DUT:	ENTITY work.sum_rest_8b           --llamado de la funciòn, se asignan a las entradas 
--	PORT MAP(		                          --y salidas las señales que se crearon en la arquitectura
--		      X    => X_tb, 					
--		      Y    => Y_tb, 					
--		      SW_1 => SW_1_tb,
--				COUT => COUT_tb,
--				S    => S_tb);
--	
--	--Para generar los vectores de prueba hay dos formas, la primera, utilizando el 'AFTER x tiempo'
--	-- o utilizar process y 'WAIT FOR' este segundo metodo lo dejo comentado debajo
--	
----		 X_tb <=   "00000011" AFTER 200 ns,
----	              "00000010" AFTER 200 ns,
----					  "10000100" AFTER 200 ns;
----					  
----		 Y_tb <=   "00000001" AFTER 200 ns,
----		           "01000010" AFTER 200 ns,
----					  "01000100" AFTER 200 ns;
----					  
----		 SW_1_tb <= '1' AFTER 600 ns;
----		
--		 
--			
--			
--	--reloj_tb <= (NOT reloj_tb) AFTER 10 ns; --EJEMPLO DE COMO GENERAR UN RELOJ     
--	--Input signal generation
--	signal_generation: PROCESS
--	BEGIN
--      
--		
--		 X_tb <=   "00000011";
--		 Y_tb <=   "00000001";
--		 SW_1_tb <= '0';
--		WAIT FOR 200 ns;
--		
--      X_tb <=   "00000011";
--		Y_tb <=   "00001001";
--		SW_1_tb <= '0';
--		WAIT FOR 200 ns;
--		
--      X_tb <=   "10000011";
--		Y_tb <=   "00001111";
--		SW_1_tb <= '1';
--	   WAIT FOR 200 ns;
--		
--      X_tb <=   "00001111";
--		Y_tb <=   "10000000";
--		SW_1_tb <= '1';
--	   WAIT FOR 200 ns;
--		
--	END PROCESS signal_generation;
--
--END ARCHITECTURE testbench;
--
