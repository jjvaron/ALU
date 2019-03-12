LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
------------------------------------------------------------------------
ENTITY ALU IS 
PORT (-- clk       : IN STD_LOGIC;
           rst       : IN STD_LOGIC;
           A         : IN STD_LOGIC_VECTOR (7 DOWNTO 0);--:="11110000";
			  B         : IN STD_LOGIC_VECTOR (7 DOWNTO 0);--:="00001111";
			  operacion : IN STD_LOGIC_VECTOR (2 DOWNTO 0);--:="001";
			  S         : INOUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			  S_onebit  : OUT STD_LOGIC;
			  OVERFLOW  : OUT STD_LOGIC
			  );
END ENTITY ALU;
ARCHITECTURE functional OF ALU IS
   SIGNAL Ssuma, Sresta, SANDOP, SOROP: STD_LOGIC_VECTOR(7 DOWNTO 0);
   SIGNAL Seq, Sls : STD_LOGIC;
	SIGNAL COUT_ss,COUT_sr, OVERFLOW_S,OVERFLOW_R : STD_LOGIC;
	SIGNAL  Amayor0  : STD_LOGIC;
	SIGNAL  Bmayor0  : STD_LOGIC;
	SIGNAL  Smayor   : STD_LOGIC;
--	SIGNAL mayor, menor, equal:
--	SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);

	
  BEGIN
  
  	Amayor:ENTITY work.Bitcomparator_8  --- CERO es mayor
	PORT MAP (  X    => A,
					Y    => "00000000",
		        ls   => Amayor0);
	Bmayor:ENTITY work.Bitcomparator_8  --- CERO es mayor
	PORT MAP (  X    => B,
					Y    => "00000000",
		         ls   => Bmayor0);		 --llamado de funciòn full_adder con cada pociòn de los operandos
	Salida_mayor:ENTITY work.Bitcomparator_8 -- --- CERO es mayor
	PORT MAP (  X    => S,
					Y    => "00000000",
		         ls   => Smayor);
    
	suma:ENTITY work.sum_rest_8b
	PORT MAP (  X    => A,
	            Y    => B,
					SW_1 => operacion(1),
					COUT => COUT_ss,
					S    => Ssuma);
	resta:ENTITY work.sum_rest_8b
	PORT MAP (  X    => A,
	            Y    => B,
					SW_1 => operacion(0),
					COUT => COUT_sr,
					S    => Sresta);
	mayor:ENTITY work.Bitcomparator_8
	PORT MAP (  X    => A,
	            Y    => B,
					ls   => Sls);
	equal:ENTITY work.equal
	PORT MAP (  X    => A,
	            Y    => B,
					eq   => Seq);
	ANDOP:ENTITY work.ANDOP
	PORT MAP (  X    => A,
	            Y    => B,
					a    => SANDOP);
	OROP:ENTITY work.OROP
	PORT MAP (  X    => A,
	            Y    => B,
					O    => SOROP);	
	
  elegir_operacion:PROCESS (operacion, Ssuma, Sresta,SANDOP, SOROP, Seq, Sls)
	  BEGIN 
		 CASE operacion IS
		 WHEN "000" => S_onebit <= Seq;
		 WHEN "001" => S <= Ssuma;
		 WHEN "010" => S <= Sresta;
		 WHEN "011" => S_onebit <= Sls;
		 WHEN "100" => S <= SANDOP;
		 WHEN "101" => S <= SOROP;
		 WHEN OTHERS => S <= "00000000";
		 END CASE;
  END PROCESS elegir_operacion;
	 
  det_overflow:PROCESS (OVERFLOW_R, OVERFLOW_S)
	  BEGIN 
		 IF (COUT_ss ='1') THEN 
			  OVERFLOW_S <= '1';
			  OVERFLOW_R <= '1';--¡¡ASIGNACIÓN DE VALORES TEMPORAL!!!
		 ELSE 
			  OVERFLOW_S <= '0';
			  OVERFLOW_R <= '0';--¡¡ASIGNACIÓN DE VALORES TEMPORAL!!!
		 END IF;
  END PROCESS det_overflow;
	 
  elegir_overflow:PROCESS(OVERFLOW_R, OVERFLOW_S)
	  BEGIN 
		 CASE operacion IS
		
		 WHEN "001" => OVERFLOW <= OVERFLOW_S;
		 WHEN "010" => OVERFLOW <= OVERFLOW_R;
		 WHEN OTHERS => OVERFLOW <= '0';
		 END CASE;
  END PROCESS elegir_overflow;
	 
	 
	 -----------¡¡¡HAY QUE CORREGIR!!!---------
	 
	--	  --SUMA --CASOS DE OVER FLOW SEGUN TABLA 
--		 IF (SW_1 = '0') THEN
--			 IF (((Amayor0 AND Bmayor0) AND Smayor) = '1' ) THEN  --- ambos en CERO
--					OVERFLOW(0) <= '1';                             --Amayor0 = 0; Bmayor0 = 0; Smayor = 1 (operandos > 0 y salida < 0)
--			 ELSIF(((Amayor0 AND Bmayor0) AND Smayor) = '0') THEN --Amayor0 = 1; Bmayor0 = 1; Smayor = 0 (operandos < 0 y salida > 0)
--					OVERFLOW(1) <= '1';
--		    END IF;
--		 END IF;
--	 --RESTA
--		 IF (SW_1 = '1') THEN
--			 IF (((Amayor0 OR Bmayor0) AND Smayor) = '1' ) THEN  --- ambos en CERO
--					OVERFLOW(2) <= '1';                            --Amayor0 = 0; Bmayor0 = 1; Smayor = 0 (operando A > 0, B < 0 y salida < 0)
--			 ELSIF(((Amayor0 OR Bmayor0) AND Smayor) = '0')THEN  --Amayor0 = 1; Bmayor0 = 0; Smayor = 0 (operando A < 0, B > 0 y salida > 0)
--					OVERFLOW(3) <= '1';
--		    END IF;
--	 	 END IF;
--	 END PROCESS det_overflow;
  
END ARCHITECTURE functional;
  
  
  

					     
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		