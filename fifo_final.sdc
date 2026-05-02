###################################################################

# Created by write_sdc on Fri May  1 10:54:48 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_transition 0.15 [current_design]
set_max_capacitance 0.1 [current_design]
set_max_fanout 16 [current_design]
set_max_area 0
create_clock [get_ports clk]  -period 2  -waveform {0 1}
set_clock_uncertainty -setup 0.15  [get_clocks clk]
set_clock_uncertainty -hold 0.1  [get_clocks clk]
set_output_delay -clock clk  -max 0.5  [get_ports {data_out[7]}]
set_output_delay -clock clk  -min 0.1  [get_ports {data_out[7]}]
set_output_delay -clock clk  -max 0.5  [get_ports {data_out[6]}]
set_output_delay -clock clk  -min 0.1  [get_ports {data_out[6]}]
set_output_delay -clock clk  -max 0.5  [get_ports {data_out[5]}]
set_output_delay -clock clk  -min 0.1  [get_ports {data_out[5]}]
set_output_delay -clock clk  -max 0.5  [get_ports {data_out[4]}]
set_output_delay -clock clk  -min 0.1  [get_ports {data_out[4]}]
set_output_delay -clock clk  -max 0.5  [get_ports {data_out[3]}]
set_output_delay -clock clk  -min 0.1  [get_ports {data_out[3]}]
set_output_delay -clock clk  -max 0.5  [get_ports {data_out[2]}]
set_output_delay -clock clk  -min 0.1  [get_ports {data_out[2]}]
set_output_delay -clock clk  -max 0.5  [get_ports {data_out[1]}]
set_output_delay -clock clk  -min 0.1  [get_ports {data_out[1]}]
set_output_delay -clock clk  -max 0.5  [get_ports {data_out[0]}]
set_output_delay -clock clk  -min 0.1  [get_ports {data_out[0]}]
set_output_delay -clock clk  -max 0.5  [get_ports full]
set_output_delay -clock clk  -min 0.1  [get_ports full]
set_output_delay -clock clk  -max 0.5  [get_ports empty]
set_output_delay -clock clk  -min 0.1  [get_ports empty]
