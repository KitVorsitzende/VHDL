LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Faltungscodierer_v IS
  PORT (
    reset,input,clk:IN STD_LOGIC;
    output:OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	 );
END Faltungscodierer_v;

ARCHITECTURE Behavior OF Faltungscodierer_v IS
  SIGNAL state:STD_LOGIC_VECTOR(1 DOWNTO 0):="00";
BEGIN
  PROCESS (reset,clk) -- state
  BEGIN
    IF reset='1' THEN
       state<="00";
		 output<="00";
    ELSIF clk'event and clk='1' THEN
    CASE state&input IS
      WHEN "000" => state<= "00"; output<= "00";
		WHEN "001" => state<= "01"; output<= "11";
		WHEN "010" => state<= "10"; output<= "10";
		WHEN "011" => state<= "11"; output<= "01";
		WHEN "100" => state<= "00"; output<= "11";
		WHEN "101" => state<= "01"; output<= "00";
		WHEN "110" => state<= "10"; output<= "01";
		WHEN "111" => state<= "11"; output<= "10";
	 END CASE;
    END IF;
  END PROCESS; -- state
END Behavior;