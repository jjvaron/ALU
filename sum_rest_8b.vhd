LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-----------------------------------------------------
ENTITY sum_rest_8b IS
    PORT (X      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);--:="11110000";  --Entradas de 8bits 'X' y 'Y'
			 Y      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);--:="00001111";
			 SW_1   : IN  STD_LOGIC:='0';                 --Entrada que determina si se va a sumar o restar
			 COUT   : OUT  STD_LOGIC;
			 OVERFLOW: OUT STD_LOGIC; --_VECTOR (3 DOWNTO 0):="0000";
			 S      : OUT  STD_LOGIC_VECTOR (7 DOWNTO 0));--Salida de 8bits
	END ENTITY sum_rest_8b;
-----------------------------------------------------
ARCHITECTURE functional OF sum_rest_8b IS
   SIGNAL  COUT_S,S_S   : STD_LOGIC_VECTOR (7 DOWNTO 0);   --señal de carry out auxiliar
	SIGNAL  Y_S      : STD_LOGIC_VECTOR (7 DOWNTO 0);   --Operando B

--	SIGNAL  COUT   : STD_LOGIC;
	--SIGNAL  x_s    : STD_LOGIC_VECTOR (3 DOWNTO 0);
	--SIGNAL  sw_1   :   STD_LOGIC;

BEGIN                                               --Operaciòn bit a bit con el operando B
		Y_S(0) <= Y(0) XOR SW_1;
	Y_S(1) <= Y(1) XOR SW_1;
	Y_S(2) <= Y(2) XOR SW_1;
	Y_S(3) <= Y(3) XOR SW_1;
	Y_S(4) <= Y(4) XOR SW_1;
	Y_S(5) <= Y(5) XOR SW_1;
	Y_S(6) <= Y(6) XOR SW_1;
	Y_S(7) <= Y(7) XOR SW_1;


--	Amayor:ENTITY work.Bitcomparator_8  --- CERO es mayor
--	PORT MAP (  X    => x,
--					Y    => "00000000",
--		        ls   => Amayor0);
--	Bmayor:ENTITY work.Bitcomparator_8  --- CERO es mayor
--	PORT MAP (  X    => y,
--					Y    => "00000000",
--		         ls   => Bmayor0);		 --llamado de funciòn full_adder con cada pociòn de los operandos
--	Salida_mayor:ENTITY work.Bitcomparator_8 -- --- CERO es mayor
--	PORT MAP (  X    => S,
--					Y    => "00000000",
--		         ls   => Smayor);

	full_adder_0: ENTITY work.full_adder
	PORT MAP (  X    => X(0),
					Y    => Y_S(0),
				 CIN  => SW_1,
				 COUT => COUT_S(0),
				 S    => S(0));
	full_adder_1: ENTITY work.full_adder
	PORT MAP (  X    => X(1),
					Y    => Y_S(1),
		 CIN  => COUT_S(0),
		 COUT => COUT_S(1),
		 S    => S(1));
	full_adder_2: ENTITY work.full_adder
	PORT MAP (  X    => X(2),
					Y    => Y_S(2),
		 CIN  => COUT_S(1),
		 COUT => COUT_S(2),
		 S    => S(2));
	full_adder_3: ENTITY work.full_adder
	PORT MAP (  X    => X(3),
					Y    => Y_S(3),
		 CIN  => COUT_S(2),
		 COUT => COUT_S(3),
		 S    => S(3));
	full_adder_4: ENTITY work.full_adder
	PORT MAP (  X    => X(4),
					Y    => Y_S(4),
		 CIN  => COUT_S(3),
		 COUT => COUT_S(4),
		 S    => S(4));
	full_adder_5: ENTITY work.full_adder
	PORT MAP (  X    => X(5),
					Y    => Y_S(5),
		 CIN  => COUT_S(4),
		 COUT => COUT_S(5),
		 S    => S(5));
	full_adder_6: ENTITY work.full_adder
	PORT MAP (  X    => X(6),
					Y    => Y_S(6),
		 CIN  => COUT_S(5),
		 COUT => COUT_S(6),
		 S    => S(6));
	full_adder_7: ENTITY work.full_adder
	PORT MAP (  X    => X(7),
					Y    => Y_S(7),
		 CIN  => COUT_S(6),
		 COUT => COUT_S(7),
		 S    => S(7));
	  COUT   <= COUT_S(7);         -- asignaciòn del carry out / de salida

--	  S_s <= S;
	 ---------CASOS DE OVERFLOW -------- DEBERIA OPERARSE EN EL BLOQUE DE LA ALU
--	  --SUMA
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
--	 END PROCESS;


END ARCHITECTURE;
