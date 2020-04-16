LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY basisfrequenz IS
  PORT (
  clk_orginal:IN STD_Logic;
  clk_basis:OUT STD_LOGIC
  );
END basisfrequenz;

ARCHITECTURE Behavior OF basisfrequenz IS
  SIGNAL counter:INTEGER RANGE 0 TO 65535;  -- 2^16=65536  basis~  tested under 15

  BEGIN 	
	 PROCESS_basis:PROCESS(clk_orginal,counter)
	 BEGIN  
	  IF clk_orginal='1' and clk_orginal'event and counter<=32768 THEN --
	    clk_basis<='1';
	    counter<=counter+1;
	  ELSIF clk_orginal='1' and clk_orginal'event and counter>32768 THEN 
	    clk_basis<='0';
		 counter<=counter+1;
	 -- ELSIF  clk_orginal='1' and clk_orginal'event and counter=15 THEN
		 --counter<=1;
		 --clk_basis<='1';
	  END IF;
  END PROCESS;
END Behavior;