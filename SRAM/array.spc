*Array Cell - Scott Fischer
.include cell_1rw.sp

.subckt cell_1rw BL BR VGND VPWR VPB VNB WL
*Access Transistors
X0 QB WL BR VNB sky130_fd_pr__nfet_01v8 w=0.36 l=0.15
X2 BL WL Q VNB sky130_fd_pr__nfet_01v8 w=0.36 l=0.15

*LEFT INV 
X1 Q QB VGND VNB sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
X6 Q QB VPWR VPB sky130_fd_pr__pfet_01v8 w=0.42 l=0.15

*RIGHT INV
X5 VPWR Q QB VPB sky130_fd_pr__pfet_01v8 w=0.42 l=0.15
X7 VGND Q QB VNB sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
.ends


.subckt array VPWR WL0 BL0 BR0 BL1 BR1 BL2 BR2 VGND WL1
XBC1 BL0 BR0 VGND VPWR VPWR VGND WL0 cell_1rw
XBC2 BL1 BR1 VGND VPWR VPWR VGND WL0 cell_1rw
XBC3 BL2 BR2 VGND VPWR VPWR VGND WL0 cell_1rw
XBC4 BL0 BR0 VGND VPWR VPWR VGND WL1 cell_1rw
XBC5 BL1 BR1 VGND VPWR VPWR VGND WL1 cell_1rw
XBC6 BL2 BR2 VGND VPWR VPWR VGND WL1 cell_1rw
XBC7 BL0 BR0 VGND VPWR VPWR VGND WL2 cell_1rw
XBC8 BL1 BR1 VGND VPWR VPWR VGND WL2 cell_1rw
XBC9 BL2 BR2 VGND VPWR VPWR VGND WL2 cell_1rw
.ends