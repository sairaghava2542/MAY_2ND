################################################################################
#
# Design name:  fifo
#
# Created by icc2 write_sdc on Sat May  2 02:49:21 2026
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 13
create_clock -name clk -period 2 -waveform {0 1} [get_ports {clk}]
set_propagated_clock [get_clocks {clk}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.179119 [get_clocks {clk}]
# -origin useful_skew
set_clock_latency -max 0.201931 [get_clocks {clk}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk}]
set_clock_uncertainty -setup 0.15 [get_clocks {clk}]
set_clock_uncertainty -hold 0.1 [get_clocks {clk}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 16; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 17
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {data_out[7]}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out[7]}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 18; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 19
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {data_out[6]}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out[6]}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 20; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 21
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {data_out[5]}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out[5]}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 22; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 23
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {data_out[4]}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out[4]}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 24; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 25
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {data_out[3]}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out[3]}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 26; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 27
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {data_out[2]}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out[2]}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 28; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 29
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {data_out[1]}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out[1]}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 30; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 31
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {data_out[0]}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out[0]}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 32; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 33
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {full}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {full}]
# /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 34; \
#   /home/bvrit/synopsys_example/workshop/DC/fifo_final.sdc, line 35
set_output_delay -clock [get_clocks {clk}] -min 0.1 [get_ports {empty}]
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {empty}]
set_max_transition 0.15 [current_design]
set_max_capacitance 0.1 [current_design]
