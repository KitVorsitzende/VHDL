library verilog;
use verilog.vl_types.all;
entity Faltungscodierer is
    port(
        reset           : in     vl_logic;
        input1          : in     vl_logic;
        clk             : in     vl_logic;
        output1         : out    vl_logic_vector(1 downto 0)
    );
end Faltungscodierer;
