*OSCILLATOR CIRCUIT: Scott Fischer

.lib "/software/PDKs/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.include "OSC.spice"
.include "/software/PDKs/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice"

.option temp = 27
*.option temp = 0
*.option temp = 20
*.option temp = 40
*.option temp = 60
*.option temp = 80
*.option temp = 100
.opt list

Xosc en sel vdd 0 out OSC

Vvdd vdd 0 1.8
*VDD OPTIONS
*Vvdd vdd 0 1
*Vvdd vdd 0 1.2
*Vvdd vdd 0 1.4
*Vvdd vdd 0 1.6
Ven en 0 1.8
Vsel sel 0 1.8
.tran 0.01ns 10ns

.param half_supply = '0.5 * 1.8'
.param ten_supply = '0.1 * 1.8'
.param ninety_supply = '0.9 *1.8'

.meas tran period trig v(out) val=half_supply rise=3 targ v(out) val=half_supply rise=4
.meas tran delay trig v(Xosc.sky130_fd_sc_hd__inv_1_4/A) val=half_supply rise=3 targ v(Xosc.sky130_fd_sc_hd__inv_1_5/A) val=half_supply fall=3
.meas tran nand_out_slew trig v(Xosc.sky130_fd_sc_hd__inv_1_0/A) val=ten_supply rise=3 targ v(Xosc.sky130_fd_sc_hd__inv_1_0/A) val=ninety_supply rise=3
.meas tran nand_in_slew trig v(Xosc.sky130_fd_sc_hd__mux2_1_0/x) val=ninety_supply fall=3 targ v(Xosc.sky130_fd_sc_hd__mux2_1_0/x) val=ten_supply fall=3

.print TRAN Vout
