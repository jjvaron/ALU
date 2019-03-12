LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-------------------------------------
ENTITY ALU_tb IS                    --IMPORTANTE: La entidad debe estar vacìa
END ENTITY ALU_tb;
-------------------------------------
ARCHITECTURE testbench OF ALU_tb IS
	                                          -- diseño de la arquitectura
															-- declaraciòn de las señales del TESTBENCH
	SIGNAL	X_tb, Y_tb : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL   SW_1_tb    : STD_LOGIC;                 
	SIGNAL   COUT_tb    : STD_LOGIC;                     
	SIGNAL   S_tb       : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL   OVERFLOW_tb       : STD_LOGIC_VECTOR (3 DOWNTO 0);
BEGIN

	DUT:	ENTITY work.ALU           --llamado de la funciòn, se asignan a las entradas 
	PORT MAP(		                          --y salidas las señales que se crearon en la arquitectura
		      X    => X_tb, 					
		      Y    => Y_tb, 					
		      SW_1 => SW_1_tb,
				COUT => COUT_tb,
				S    => S_tb,
				OVERFLOW => OVERFLOW_tb);
	

	signal_generation: PROCESS
	BEGIN
--EQUAL      
		 operacion <= "000"
		 X_tb <=   "11111111";
		 Y_tb <=   "00000001";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;      
		 operacion <= "000"
		 X_tb <=   "11111111";
		 Y_tb <=   "11111111";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;

--SUMA      
		 operacion <= "000"
		 X_tb <=   "11111111";
		 Y_tb <=   "00000001";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;
		
      X_tb <=   "10000011";
		Y_tb <=   "10001001";
		SW_1_tb <= '0';
		WAIT FOR 200 ns;
--RESTA		
      X_tb <=   "10000011";
		Y_tb <=   "11111111";
		SW_1_tb <= '1';
	   WAIT FOR 200 ns;
		
      X_tb <=   "00001111";
		Y_tb <=   "10000000";
		SW_1_tb <= '1';
	   WAIT FOR 200 ns;
--MAYOR      
		 operacion <= "000"
		 X_tb <=   "11111111";
		 Y_tb <=   "00001111";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;
      
		 operacion <= "000"
		 X_tb <=   "11110000";
		 Y_tb <=   "11111111";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;
--AND      
		 operacion <= "000"
		 X_tb <=   "11111111";
		 Y_tb <=   "00001111";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;
      
		 operacion <= "000"
		 X_tb <=   "11110000";
		 Y_tb <=   "11111111";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;
--OR      
		 operacion <= "000"
		 X_tb <=   "11100111";
		 Y_tb <=   "00111111";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;
      
		 operacion <= "000"
		 X_tb <=   "11010111";
		 Y_tb <=   "11111100";
		 SW_1_tb <= '0';
		WAIT FOR 200 ns;
		
	END PROCESS signal_generation;

END ARCHITECTURE testbench;