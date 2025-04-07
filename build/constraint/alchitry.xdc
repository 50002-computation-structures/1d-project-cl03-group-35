set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
# clk => 10000000Hz
create_clock -period 100.0 -name clk_0 -waveform {0.000 50.0} [get_ports clk]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk_0]

set_property PACKAGE_PIN P6 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]

set_property PACKAGE_PIN K13 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN K12 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN L14 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN L13 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

set_property PACKAGE_PIN M16 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN M14 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

set_property PACKAGE_PIN M12 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN N16 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]

set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]

set_property PACKAGE_PIN E3 [get_ports {positive[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {positive[0]}]

set_property PACKAGE_PIN D3 [get_ports {positive[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {positive[1]}]

set_property PACKAGE_PIN F2 [get_ports {positive[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {positive[2]}]

set_property PACKAGE_PIN E1 [get_ports {positive[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {positive[3]}]

set_property PACKAGE_PIN E5 [get_ports {negative[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {negative[0]}]

set_property PACKAGE_PIN G4 [get_ports {negative[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {negative[1]}]

set_property PACKAGE_PIN B4 [get_ports {negative[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {negative[2]}]

set_property PACKAGE_PIN A3 [get_ports {negative[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {negative[3]}]

set_property PACKAGE_PIN K3 [get_ports {col[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[0]}]

set_property PACKAGE_PIN N9 [get_ports {col[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[1]}]

set_property PACKAGE_PIN R7 [get_ports {col[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[2]}]

set_property PACKAGE_PIN T9 [get_ports {col[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col[3]}]

set_property PACKAGE_PIN C6 [get_ports {select_button[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select_button[0]}]
set_property PULLDOWN true [get_ports {select_button[0]}]

set_property PACKAGE_PIN C7 [get_ports {start_button[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {start_button[0]}]
set_property PULLDOWN true [get_ports {start_button[0]}]

set_property PACKAGE_PIN M6 [get_ports {row[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[0]}]
set_property PULLDOWN true [get_ports {row[0]}]

set_property PACKAGE_PIN H5 [get_ports {row[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[1]}]
set_property PULLDOWN true [get_ports {row[1]}]

set_property PACKAGE_PIN J3 [get_ports {row[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[2]}]
set_property PULLDOWN true [get_ports {row[2]}]

set_property PACKAGE_PIN J5 [get_ports {row[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row[3]}]
set_property PULLDOWN true [get_ports {row[3]}]

