LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Taster IS
  PORT (
  taster1,taster2,taster3,taster4:IN STD_Logic;
  dip_schalter:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  reset,stop,quicker,slower:OUT STD_Logic;
  module:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END Taster;

ARCHITECTURE Behavior OF Taster IS
BEGIN 
  module<=NOT(dip_schalter);
  reset<=NOT(taster3);
  stop<=NOT(taster4);
  quicker<=NOT(taster1);
  slower<=NOT(taster2);
END Behavior;
