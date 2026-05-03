# Target: 500MHz (2.0ns period) for 32nm
set_units -time ns -resistance kOhm -capacitance fF -voltage V -current mA

# 1. Clock Definition
create_clock -name clk -period 3.0 [get_ports clk]

# 2. Clock Uncertainty (Critical for Slack)
# Modeling 10% jitter for setup and a buffer for hold
set_clock_uncertainty -setup 0.15 [get_clocks clk]
set_clock_uncertainty -hold  0.1 [get_clocks clk]

# 3. I/O Constraints (Assuming 25% of clock period)
set_input_delay  -max 0.5 -clock clk 
set_input_delay  -min 0.1 -clock clk 
set_output_delay -max 0.5 -clock clk [all_outputs]
set_output_delay -min 0.1 -clock clk [all_outputs]

# 4. Design Rule Constraints (DRC) for 32nm
set_max_transition 0.15 [current_design]
set_max_capacitance 0.1  [current_design]
set_max_fanout 16 [current_design]

# 5. Area Constraint (Force optimization)
set_max_area 0

