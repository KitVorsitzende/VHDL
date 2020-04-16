library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY DFF_14_bit IS
GENERIC(
  signal_width:integer:=14
);
PORT(
  clk:IN STD_LOGIC;
  signal_input:IN SIGNED(signal_width-1 downto 0);
  signal_output:OUT SIGNED(signal_width-1 downto 0)
);
END DFF_14_bit;

ARCHITECTURE Behavior OF DFF_14_bit IS
SIGNAL tmp:SIGNED(signal_width-1 downto 0):=(others=>'0');
BEGIN
  signal_output<=tmp;
  PROCESS(clk)
  BEGIN
    IF(rising_edge(clk)) THEN
	   tmp<=signal_input;
	 END IF;
  END PROCESS;

END Behavior;