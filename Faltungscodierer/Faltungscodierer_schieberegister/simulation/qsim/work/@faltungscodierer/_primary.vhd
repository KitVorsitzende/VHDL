library verilog;
use verilog.vl_types.all;
entity Faltungscodierer is
    port(
        out1            : out    vl_logic;
        reset           : in     vl_logic;
        takt            : in     vl_logic;
        code_input      : in     vl_logic;
        out2            : out    vl_logic;
        out3            : out    vl_logic
    );
end Faltungscodierer;
