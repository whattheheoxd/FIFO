set_property -dict {PACKAGE_PIN E3  IOSTANDARD LVCMOS33} [get_ports {clk100MHz}]; 
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk100MHz}];
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {rst}];

#a inputs (left of half of dip switches)
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS33} [get_ports {a[0]}]; 
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {a[1]}]; 
set_property -dict {PACKAGE_PIN U11 IOSTANDARD LVCMOS33} [get_ports {a[2]}];
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {a[3]}];

#carry-in push button
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {button}];
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {en}];
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {rnw}];
#a output LEDs

set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {emptyLED}]; 
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {fullLED}]; 

set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[3]}]; 
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[2]}]; 
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[1]}];
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[0]}];

set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports {aled[3]}]; 
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {aled[2]}]; 
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {aled[1]}];
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {aled[0]}];