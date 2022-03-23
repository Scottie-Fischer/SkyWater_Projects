
.subckt cell_1rw_sim BL BR VGND VPWR VPB VNB WL Q QB QD QBD
*Access Transisitors
X0 QBD WL BR VNB sky130_fd_pr__nfet_01v8 w=0.36 l=0.15
X2 BL WL QD VNB sky130_fd_pr__nfet_01v8 w=0.36 l=0.15

X1 QD QB VGND VNB sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
X6 QD QB VPWR VPB sky130_fd_pr__pfet_01v8 w=0.42 l=0.15

X5 VPWR Q QBD VPB sky130_fd_pr__pfet_01v8 w=0.42 l=0.15
X7 VGND Q QBD VNB sky130_fd_pr__nfet_01v8 w=0.42 l=0.15
.ends

* Same cell as above but with Q and QD as well as QB and QBD shorted
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
