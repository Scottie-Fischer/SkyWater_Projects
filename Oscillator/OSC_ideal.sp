*OSCILLATOR CIRCUIT

.lib "/software/PDKs/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.include "OSC.spc"

.option temp = 27
.opt list

Xosc en sel out vdd 0 OSC

Vvdd vdd 0 1.8
Ven en 0 1.8
Vsel sel 0 1.8
.tran 0.01ns 200ns

.param half_supply = '0.5 * 1.8'
.param ten_supply = '0.1 * 1.8'
.param ninety_supply = '0.9 *1.8'

.meas tran period trig v(out) val=half_supply rise=1 targ v(out) val=half_supply rise=2
.meas tran delay trig v(Xosc.s4) val=half_supply rise=3 targ v(Xosc.s5) val=half_supply fall=3
.print TRAN Vout
