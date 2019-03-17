LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-------------------------------------
ENTITY ALU_tb IS                    --IMPORTANTE: La entidad debe estar vacìa
END ENTITY ALU_tb;
-------------------------------------
ARCHITECTURE testbench OF ALU_tb IS
	                                          -- diseño de la arquitectura
															-- declaraciòn de las señales del TESTBENCH
	SIGNAL	A_tb, B_tb         : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL   OVERFLOW_tb,rst_tb : STD_LOGIC;                 
	SIGNAL   COUT_tb,S_onebit_tb: STD_LOGIC;                     
	SIGNAL   S_tb               : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL   operacion_tb       : STD_LOGIC_VECTOR (2 DOWNTO 0);
BEGIN

	DUT:	ENTITY work.ALU           --llamado de la funciòn, se asignan a las entradas 
	PORT MAP(		                          --y salidas las señales que se crearon en la arquitectura
		      A    => A_tb,				
		      B    => B_tb, 					
		      rst  => rst_tb,
--				COUT => COUT_tb,
            operacion => operacion_tb,
				S    => S_tb,
				S_onebit => S_onebit_tb,
				OVERFLOW => OVERFLOW_tb);
	

	signal_generation: PROCESS
	BEGIN
--EQUAL      
	--	 operacion_tb <= "000";
	--	 A_tb <=   "11111111";
	--	 B_tb <=   "00000001";
--		 SW_1_tb <= '0';
	--	WAIT FOR 200 ns;      
	--	 operacion_tb <= "000";
	--	 A_tb <=   "11111111";
	--	 B_tb <=   "11111111";
	--	 SW_1_tb <= '0';
	--	WAIT FOR 200 ns;

--SUMA      
		 operacion_tb <= "001";
		 WAIT FOR 600 ns;
		
		 A_tb <=   "11111111";
		 B_tb <=   "00000001";
		-- SW_1_tb <= '0';
		WAIT FOR 200 ns;
		
	--peracion_tb <= "001";
                A_tb <=   "10000011";
		B_tb <=   "10001001";
		--SW_1_tb <= '0';
		WAIT FOR 200 ns;
--RESTA
      operacion_tb <= "010";		
      A_tb <=   "10000011";
		B_tb <=   "11111111";
--		SW_1_tb <= '1';
	   WAIT FOR 200 ns;
		
		operacion_tb <= "010";
      A_tb <=   "00001111";
		B_tb <=   "10000000";
	--	SW_1_tb <= '1';
	   WAIT FOR 200 ns;
--MAYOR      
		 operacion_tb <= "011";
		 A_tb <=   "11111111";
		 B_tb <=   "00001111";
		-- SW_1_tb <= '0';
		WAIT FOR 200 ns;
      
		 operacion_tb <= "011";
		 A_tb <=   "11110000";
		 B_tb <=   "11111111";
		 --SW_1_tb <= '0';
		WAIT FOR 200 ns;
--AND      
		 operacion_tb <= "100";
		 A_tb <=   "11101111";
		 B_tb <=   "00001111";
		 --SW_1_tb <= '0';
		WAIT FOR 200 ns;
      
		 operacion_tb <= "100";
		 A_tb <=   "11110000";
		 B_tb <=   "11111110";
--		 SW_1_tb <= '0';
		WAIT FOR 200 ns;
--OR      
		 operacion_tb <= "101";
		 A_tb <=   "11100111";
		 B_tb <=   "00100111";
	--	 SW_1_tb <= '0';
		WAIT FOR 200 ns;
      
		 operacion_tb <= "101";
		 A_tb <=   "11010111";
		 B_tb <=   "10011100";
		-- SW_1_tb <= '0';
		WAIT FOR 200 ns;
		
	END PROCESS signal_generation;

END ARCHITECTURE testbench;
