LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
------------------------------------------------------------------------
ENTITY ALU IS 
PORT ( clk       : IN STD_LOGIC;
           rst       : IN STD_LOGIC;
           A         : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			  B         : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			  operacion : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			  S         : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			  S_onebit  : OUT STD_LOGIC;
			  OVERFLOW  : OUT STD_LOGIC
			  );
END ENTITY ALU;
ARCHITECTURE functional OF ALU IS
   SIGNAL Ssuma, Sresta, SANDOP, SOROP      : STD_LOGIC_VECTOR(7 DOWNTO 0);
   SIGNAL Seq, Sls : STD_LOGIC;
	SIGNAL COUT_ss,COUT_sr    : STD_LOGIC;
--	SIGNAL mayor, menor, equal:
--	SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);

	
  BEGIN
    
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
	
  PROCESS (operacion, Ssuma, Sresta,SANDOP, SOROP, Seq, Sls)
  BEGIN 
    CASE operacion IS
   
	 WHEN "000" => S_onebit <= Seq;
	 WHEN "001" => S <= Ssuma;
	 WHEN "010" => S <= Sresta;
	 WHEN "011" => S_onebit <= Sls;
	 WHEN "100" => S <= SANDOP;
	 WHEN "101" => S <= SOROP;
	 WHEN OTHERS => S <= "00000000";
	 
	 END CASE ;
		
	 END PROCESS ;
  
END ARCHITECTURE functional;
  
  
  

					     
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		