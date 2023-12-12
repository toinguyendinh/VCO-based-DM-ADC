v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 0 -430 420 -430 {}
L 4 0 -40 420 -40 {}
L 4 -0 -430 0 -40 {}
L 4 420 -430 420 -40 {}
N 50 -320 90 -320 { lab=pn[0]}
N 50 -300 90 -300 { lab=pn[1]}
N 50 -280 90 -280 { lab=pn[2]}
N 50 -260 90 -260 { lab=pn[3]}
N 50 -240 90 -240 { lab=pn[4]}
N 300 -320 340 -320 { lab=p[0]}
N 300 -300 340 -300 { lab=p[1]}
N 300 -280 340 -280 { lab=p[2]}
N 300 -260 340 -260 { lab=p[3]}
N 300 -240 340 -240 { lab=p[4]}
N 200 -380 200 -360 { lab=VPWR}
N 225 -110 265 -110 { lab=pn[0]}
N 120 -70 145 -70 { lab=ENB}
N 80 -110 145 -110 { lab=VPWR}
N 200 -180 200 -160 { lab=V_ctrl}
N 200 -200 200 -180 { lab=V_ctrl}
N 140 -160 200 -160 { lab=V_ctrl}
N 340 -320 350 -320 { lab=p[0]}
N 340 -300 350 -300 { lab=p[1]}
N 340 -280 350 -280 { lab=p[2]}
N 340 -260 350 -260 {}
N 340 -240 350 -240 {}
C {devices/lab_wire.sym} 80 -320 0 0 {name=l1 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 80 -300 0 0 {name=l2 sig_type=std_logic lab=pn[1]}
C {devices/lab_wire.sym} 80 -280 0 0 {name=l3 sig_type=std_logic lab=pn[2]}
C {devices/lab_wire.sym} 80 -260 0 0 {name=l4 sig_type=std_logic lab=pn[3]}
C {devices/lab_wire.sym} 80 -240 0 0 {name=l5 sig_type=std_logic lab=pn[4]}
C {devices/lab_wire.sym} 340 -320 0 0 {name=l6 sig_type=std_logic lab=p[0]}
C {devices/lab_wire.sym} 340 -300 0 0 {name=l7 sig_type=std_logic lab=p[1]}
C {devices/lab_wire.sym} 340 -280 0 0 {name=l8 sig_type=std_logic lab=p[2]}
C {devices/lab_wire.sym} 340 -260 0 0 {name=l9 sig_type=std_logic lab=p[3]}
C {devices/lab_wire.sym} 340 -240 0 0 {name=l10 sig_type=std_logic lab=p[4]}
C {sky130_stdcells/einvp_1.sym} 185 -110 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 235 -110 2 0 {name=l21 sig_type=std_logic lab=pn[0]}
C {devices/lab_wire.sym} 115 -110 0 0 {name=l16 sig_type=std_logic lab=VPWR}
C {ring_osc.sym} 170 -280 0 0 {name=Xro_1 L12=\\"L12\\" Wp12=\\"Wp12\\" Wn12=\\"Wn12\\" L34=\\"L34\\" Wp34=\\"Wp34\\" Wn34=\\"Wn34\\"}
C {devices/iopin.sym} 200 -380 0 0 {name=p2 lab=VPWR}
C {devices/opin.sym} 350 -320 0 0 {name=p3 lab=p[0]}
C {devices/ipin.sym} 120 -70 0 0 {name=p4 lab=ENB}
C {devices/opin.sym} 350 -300 0 0 {name=p5 lab=p[1]}
C {devices/opin.sym} 350 -280 0 0 {name=p6 lab=p[2]}
C {devices/opin.sym} 350 -260 0 0 {name=p7 lab=p[3]}
C {devices/opin.sym} 350 -240 0 0 {name=p8 lab=p[4]}
C {devices/ipin.sym} 140 -160 0 0 {name=p1 lab=V_ctrl}
