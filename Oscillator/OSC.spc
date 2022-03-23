*Scott Fischer
.include "/software/PDKs/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice"
.subckt OSC EN SEL OUT VDD VGND
XNAND1 MX EN VGND VGND VDD VDD YN sky130_fd_sc_hd__nand2_1
XINV1 YN VGND VGND VDD VDD Y1 sky130_fd_sc_hd__inv_1
XINV2 Y1 VGND VGND VDD VDD OUT sky130_fd_sc_hd__inv_1
XINV3 OUT VGND VGND VDD VDD Y3 sky130_fd_sc_hd__inv_1
XINV4 Y3 VGND VGND VDD VDD Y4 sky130_fd_sc_hd__inv_1
XINV5 Y4 VGND VGND VDD VDD Y5 sky130_fd_sc_hd__inv_1
XINV6 Y5 VGND VGND VDD VDD Y6 sky130_fd_sc_hd__inv_1
XMUX  OUT Y6 SEL VGND VGND VDD VDD MX sky130_fd_sc_hd__mux2_1
.ends
