LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Anzeige IS
  PORT(
  counter_run1:IN STD_LOGIC_VECTOR(6 DOWNTO 0);
  --counter_test:OUT INTEGER RANGE 0 TO 127;
  --counter_testh:OUT INTEGER RANGE 0 TO 9;
  --counter_testl:OUT INTEGER RANGE 0 TO 9;
  output_high:OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
  output_low:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
  END Anzeige;
  
  
ARCHITECTURE Behavior OF Anzeige IS
  SIGNAL counter_dec:INTEGER;
  SIGNAL  rightnum:INTEGER;
  SIGNAL  midnum:INTEGER;
  
  BEGIN
    PROCESS_translate:PROCESS(counter_run1)
    BEGIN
	   counter_dec<=to_integer(unsigned(counter_run1));
		rightnum<=counter_dec rem 10;
		midnum<=(counter_dec/10) rem 10;
		--counter_test<=counter_dec;
		--counter_testh<=midnum;
		--counter_testl<=rightnum;
		CASE rightnum IS 
		  WHEN 0 => output_low <="00000011"; 
		  WHEN 1 => output_low <="10011111"; 
		  WHEN 2 => output_low <="00100101";
		  WHEN 3 => output_low <="00001101";
		  WHEN 4 => output_low <="10011001";
		  WHEN 5 => output_low <="01001001";
		  WHEN 6 => output_low <="01000001";
		  WHEN 7 => output_low <="00011111";
		  WHEN 8 => output_low <="00000001";
		  WHEN 9 => output_low <="00001001";
		  WHEN OTHERS=> output_low <="00000000";
		END CASE;
		CASE midnum IS 
		  WHEN 0 => output_high <="00000011"; 
		  WHEN 1 => output_high <="10011111"; 
		  WHEN 2 => output_high <="00100101";
		  WHEN 3 => output_high <="00001101";
		  WHEN 4 => output_high <="10011001";
		  WHEN 5 => output_high <="01001001";
		  WHEN 6 => output_high <="01000001";
		  WHEN 7 => output_high <="00011111";
		  WHEN 8 => output_high <="00000001";
		  WHEN 9 => output_high <="00001001";
		  WHEN OTHERS=> output_high <="00000000";
		END CASE;
	 END PROCESS;
END Behavior;
  