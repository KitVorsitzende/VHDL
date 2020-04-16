LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY clockdivider IS
  PORT (
  clk_basis:IN STD_Logic;
  --counter_test:OUT STD_LOGIC_VECTOR(3 downto 0);
  clk_div:OUT STD_LOGIC_VECTOR(15 downto 0)
  );
END clockdivider;

ARCHITECTURE Behavior OF clockdivider IS
  SIGNAL div:UNSIGNED(15 downto 0);
  BEGIN 	
    
	 PROCESS_div:PROCESS(clk_basis)
	 BEGIN
	   IF rising_edge(clk_basis) THEN
		  div<=div+1;
		END IF;
    END PROCESS;
	 clk_div<=STD_LOGIC_VECTOR(div);
END Behavior;
	 
	  

			  