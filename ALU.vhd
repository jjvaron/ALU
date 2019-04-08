LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
------------------------------------------------------------------------
ENTITY ALU IS 
PORT (  --   clk       : IN STD_LOGIC;
           boton     : IN STD_LOGIC:='0';
           led       : OUT STD_LOGIC;
           b_out     : OUT STD_LOGIC;
           Aa         : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			  Bb         : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			  S         : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
			  );
END ENTITY ALU;
ARCHITECTURE functional OF ALU IS

 SIGNAL A_s, B_s , B_b,A,B  : STD_LOGIC_VECTOR (7 DOWNTO 0);
 SIGNAL COUT,led_s : STD_LOGIC;
 
 BEGIN
 
	suma:ENTITY work.sum_rest_8b
	PORT MAP (  X    => A_s,
	            Y    => B_s,
					SW_1 => led_s,
					S    => S);
	b_out <= boton;
	led_s <= '0';
	led   <= led_s;
--	a_s <= A;
--	b_s <= B;
	
			A <= "00000001";
			B <= "00000010";	
	
	A_s(0) <= A(0) AND boton;
	A_s(1) <= A(1) AND boton;
	A_s(2) <= A(2) AND boton;
	A_s(3) <= A(3) AND boton;
	A_s(4) <= A(4) AND boton;
	A_s(5) <= A(5) AND boton;
	A_s(6) <= A(6) AND boton;
	A_s(7) <= A(7) AND boton;
	
	B_s(0) <= B(0) AND boton;
	B_s(1) <= B(1) AND boton;
	B_s(2) <= B(2) AND boton;
	B_s(3) <= B(3) AND boton;
	B_s(4) <= B(4) AND boton;
	B_s(5) <= B(5) AND boton;
	B_s(6) <= B(6) AND boton;
	B_s(7) <= B(7) AND boton;	
	
	
	
--	looper: PROCESS (boton)
--	   begin
--		
--		   IF (boton='1') THEN
--					A_s <= "00000001";
--					B_s <= "00000010";	
--			ELSE
--			      A_s <= "00000000";
--					B_s <= "00000000";
--			END IF;
--		END PROCESS;	
--	

END ARCHITECTURE functional;
  
  
  

					     
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
