LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Taster IS
  PORT(
  change:IN STD_LOGIC;
  filter_type:OUT STD_LOGIC_VECTOR(1 downto 0)
  );
END Taster;

ARCHITECTURE Behavior OF Taster IS
  Type state IS(q0,q1,q2,q3);
  SIGNAL state_now:state:=q0;
  SIGNAL tmp:UNSIGNED(1 downto 0):="00";
  
  BEGIN
    state_change:PROCESS(change)
    BEGIN
      IF rising_edge(change) THEN
      tmp<=tmp+1;	
		END IF;
		filter_type<=STD_LOGIC_VECTOR(tmp);
	END PROCESS;
END Behavior;
       		
  