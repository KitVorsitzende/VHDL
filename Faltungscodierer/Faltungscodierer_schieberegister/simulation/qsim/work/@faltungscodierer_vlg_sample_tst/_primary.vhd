library verilog;
use verilog.vl_types.all;
entity Faltungscodierer_vlg_sample_tst is
    port(
        code_input      : in     vl_logic;
        reset           : in     vl_logic;
        takt            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Faltungscodierer_vlg_sample_tst;
