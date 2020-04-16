LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Anzeige IS
  PORT(
  filter_type1:IN STD_LOGIC_VECTOR(1 downto 0);
  output_high:OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
  output_low:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END Anzeige;

ARCHITECTURE Behavior OF Anzeige IS
  BEGIN
    PROCESS_Anzeige:PROCESS(filter_type1)
	 BEGIN
	 CASE filter_type1 IS
	   WHEN "00" => output_high<="01110011";output_low<="00110001"; --TP
		WHEN "01" => output_high<="10010001";output_low<="00110001"; --HP
		WHEN "10" => output_high<="00000001";output_low<="00110001"; --BP
		WHEN "11" => output_high<="00000001";output_low<="01001001"; --BS 
	 END CASE;
	 END PROCESS;
END Behavior;	 
