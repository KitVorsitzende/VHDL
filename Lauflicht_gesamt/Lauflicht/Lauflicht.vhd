LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Lauflicht IS
  PORT (
  clk,reset,stop:IN STD_Logic;
  module:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  leds:OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
  counter_run:OUT STD_LOGIC_VECTOR(6 DOWNTO 0) 
 
  );
END Lauflicht;

ARCHITECTURE Behavior OF Lauflicht IS
  TYPE state IS(q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13);
  SIGNAL state_now:state;
  SIGNAL i_counter:UNSIGNED(6 DOWNTO 0);
  SIGNAL module_now:UNSIGNED(7 DOWNTO 0);

  BEGIN 	
  
	 PROCESS2:PROCESS(reset,clk,stop,module)
	 BEGIN
	   module_now<=UNSIGNED(module);
	   IF reset='1' THEN
		  state_now<=q0;
		  i_counter<="0000000";
		ELSIF 
		clk='1' and clk'event and stop='0' THEN	
	   
		CASE state_now IS
		  WHEN q0 => leds <= STD_LOGIC_VECTOR(module_now); state_now <=q1;
		  WHEN q1 => leds <= STD_LOGIC_VECTOR(module_now ROR 1); state_now <=q2;
		  WHEN q2 => leds <= STD_LOGIC_VECTOR(module_now ROR 2); state_now <=q3;
		  WHEN q3 => leds <= STD_LOGIC_VECTOR(module_now ROR 3); state_now <=q4;
		  WHEN q4 => leds <= STD_LOGIC_VECTOR(module_now ROR 4); state_now <=q5;
		  WHEN q5 => leds <= STD_LOGIC_VECTOR(module_now ROR 5); state_now <=q6;
		  WHEN q6 => leds <= STD_LOGIC_VECTOR(module_now ROR 6); state_now <=q7;
		  WHEN q7 => leds <= STD_LOGIC_VECTOR(module_now ROR 7); state_now <=q8;
		  WHEN q8 => leds <= STD_LOGIC_VECTOR(module_now ROR 6); state_now <=q9;
		  WHEN q9 => leds <= STD_LOGIC_VECTOR(module_now ROR 5); state_now <=q10;
		  WHEN q10 => leds<= STD_LOGIC_VECTOR(module_now ROR 4); state_now <=q11;
		  WHEN q11 => leds<= STD_LOGIC_VECTOR(module_now ROR 3); state_now <=q12;
		  WHEN q12 => leds<= STD_LOGIC_VECTOR(module_now ROR 2); state_now <=q13;
		  WHEN q13 => leds<= STD_LOGIC_VECTOR(module_now ROR 1); state_now <=q0; i_counter<=i_counter+1;
		  --WHEN q14 => leds<= STD_LOGIC_VECTOR(module_now); state_now <=q0; i_counter<=i_counter+1;
		  
		  
		END CASE;
		  
		
		counter_run<=STD_LOGIC_VECTOR(i_counter);
      END IF;
    END PROCESS;
	 
END Behavior;
		 
		
	 
