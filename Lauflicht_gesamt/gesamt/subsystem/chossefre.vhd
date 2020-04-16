LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY chossefre IS
  PORT (
  quicker,slower,reset:IN STD_Logic;
  clk_div:IN STD_LOGIC_VECTOR(15 downto 0);
  --counter_test:OUT STD_LOGIC_VECTOR(3 downto 0);
  clk:OUT STD_LOGIC
  );
END chossefre;

ARCHITECTURE Behavior OF chossefre IS
  SIGNAL counter:SIGNED(3 downto 0);
  SIGNAL press:STD_LOGIC;
  BEGIN 	 
	 PROCESS_choose:PROCESS(reset,quicker,slower,press)
	 BEGIN    
	 	 press<=slower or quicker;
	   IF reset='1' THEN 
	     counter<=(others=>'0'); 

		ELSIF rising_edge(press) THEN
		     IF slower='1' THEN
	        counter<=counter+1;
		     ELSE
		     counter<=counter-1;
			  END IF;
		    END IF;
	  -- END IF;
	 --END PROCESS;
	 
	 --PROCESS_choose:PROCESS(counter,div)
	 --BEGIN
	   CASE counter IS
		WHEN "1000" => clk<=clk_div(0);
		WHEN "1001" => clk<=clk_div(1);
		WHEN "1010" => clk<=clk_div(2);
		WHEN "1011" => clk<=clk_div(3);
		WHEN "1100" => clk<=clk_div(4);
		WHEN "1101" => clk<=clk_div(5);
		WHEN "1110" => clk<=clk_div(6);
		WHEN "1111" => clk<=clk_div(7);
		WHEN "0000" => clk<=clk_div(8);
		WHEN "0001" => clk<=clk_div(9);
		WHEN "0010" => clk<=clk_div(10);
		WHEN "0011" => clk<=clk_div(11);
		WHEN "0100" => clk<=clk_div(12);
		WHEN "0101" => clk<=clk_div(13);
		WHEN "0110" => clk<=clk_div(14);
		WHEN "0111" => clk<=clk_div(15);
		END CASE;
	 END PROCESS;	
		
	 
	 --counter_test<=STD_LOGIC_VECTOR(counter);
END Behavior;
	 
	  

			  