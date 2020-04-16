LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY clockdivider IS
  PORT (
  clk_basis:IN STD_Logic;
  clk_div:OUT STD_LOGIC
  );
END clockdivider;

ARCHITECTURE Behavior OF clockdivider IS
  SIGNAL div:UNSIGNED(4 downto 0);
  BEGIN 	
    
	 PROCESS_div:PROCESS(clk_basis)
	 BEGIN
	   IF rising_edge(clk_basis) THEN
		  div<=div+1;
		END IF;
    END PROCESS;
	 clk_div<=STD_LOGIC(div(4));
END Behavior;