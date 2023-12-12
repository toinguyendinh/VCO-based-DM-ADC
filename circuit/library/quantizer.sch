v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 -0 0 1550 0 {}
L 4 1550 -710 1550 0 {}
L 4 -0 -710 1550 -710 {}
L 4 -0 -710 -0 0 {}
N 630 -480 700 -480 { lab=#net1}
N 880 -500 960 -500 { lab=#net2}
N 670 -500 700 -500 { lab=CLK}
N 420 -480 450 -480 { lab=CLK}
N 420 -520 420 -480 { lab=CLK}
N 640 -540 640 -480 { lab=#net1}
N 640 -540 960 -540 { lab=#net1}
N 670 -520 670 -500 { lab=CLK}
N 1080 -520 1140 -520 { lab=out_0}
N 380 -460 450 -460 { lab=pha_0}
N 630 -370 700 -370 { lab=#net3}
N 880 -390 960 -390 { lab=#net4}
N 670 -390 700 -390 { lab=CLK}
N 420 -370 450 -370 { lab=CLK}
N 420 -410 420 -370 { lab=CLK}
N 640 -430 640 -370 { lab=#net3}
N 640 -430 960 -430 { lab=#net3}
N 670 -410 670 -390 { lab=CLK}
N 1080 -410 1140 -410 { lab=out_1}
N 380 -350 450 -350 { lab=pha_1}
N 630 -270 700 -270 { lab=#net5}
N 880 -290 960 -290 { lab=#net6}
N 670 -290 700 -290 { lab=CLK}
N 420 -270 450 -270 { lab=CLK}
N 420 -310 420 -270 { lab=CLK}
N 640 -330 640 -270 { lab=#net5}
N 640 -330 960 -330 { lab=#net5}
N 670 -310 670 -290 { lab=CLK}
N 1080 -310 1140 -310 { lab=out_2}
N 380 -250 450 -250 { lab=pha_2}
N 630 -160 700 -160 { lab=#net7}
N 880 -180 960 -180 { lab=#net8}
N 670 -180 700 -180 { lab=CLK}
N 420 -160 450 -160 { lab=CLK}
N 420 -200 420 -160 { lab=CLK}
N 640 -220 640 -160 { lab=#net7}
N 640 -220 960 -220 { lab=#net7}
N 670 -200 670 -180 { lab=CLK}
N 1080 -200 1140 -200 { lab=out_3}
N 380 -140 450 -140 { lab=pha_3}
N 630 -60 700 -60 { lab=#net9}
N 880 -80 960 -80 { lab=#net10}
N 670 -80 700 -80 { lab=CLK}
N 420 -60 450 -60 { lab=CLK}
N 420 -100 420 -60 { lab=CLK}
N 640 -120 640 -60 { lab=#net9}
N 640 -120 960 -120 { lab=#net9}
N 670 -100 670 -80 { lab=CLK}
N 1080 -100 1140 -100 { lab=out_4}
N 380 -40 450 -40 { lab=pha_4}
N 440 -660 440 -600 { lab=CLK}
N 570 -660 570 -600 { lab=VPWR}
N 110 -480 170 -480 { lab=pha_0}
N 110 -440 170 -440 { lab=pha_1}
N 110 -400 170 -400 { lab=pha_2}
N 110 -360 170 -360 { lab=pha_3}
N 110 -320 170 -320 { lab=pha_4}
N 1340 -380 1400 -380 { lab=out_4}
N 1340 -420 1400 -420 { lab=out_3}
N 1340 -460 1400 -460 { lab=out_2}
N 1340 -500 1400 -500 { lab=out_1}
N 1340 -540 1400 -540 { lab=out_0}
N 725 -660 725 -600 { lab=VGND}
C {sky130_stdcells/dfxtp_1.sym} 540 -470 0 0 {name=x1 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 790 -490 0 0 {name=x2 VGND=VGND VNB=VGND VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 1020 -520 0 0 {name=x3 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 420 -500 0 0 {name=l1 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 670 -520 2 0 {name=l2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 420 -390 0 0 {name=l3 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 420 -290 0 0 {name=l4 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 420 -180 0 0 {name=l5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 420 -80 0 0 {name=l6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 670 -410 2 0 {name=l7 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 670 -310 2 0 {name=l8 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 670 -200 2 0 {name=l9 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 670 -100 2 0 {name=l10 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 380 -460 0 0 {name=l11 sig_type=std_logic lab=pha_0}
C {devices/lab_pin.sym} 380 -350 0 0 {name=l12 sig_type=std_logic lab=pha_1}
C {devices/lab_pin.sym} 380 -250 0 0 {name=l13 sig_type=std_logic lab=pha_2}
C {devices/lab_pin.sym} 380 -140 0 0 {name=l14 sig_type=std_logic lab=pha_3}
C {devices/lab_pin.sym} 380 -40 0 0 {name=l15 sig_type=std_logic lab=pha_4}
C {devices/lab_pin.sym} 1140 -520 2 0 {name=l16 sig_type=std_logic lab=out_0}
C {devices/lab_pin.sym} 1140 -410 2 0 {name=l17 sig_type=std_logic lab=out_1}
C {devices/lab_pin.sym} 1140 -310 2 0 {name=l18 sig_type=std_logic lab=out_2}
C {devices/lab_pin.sym} 1140 -200 2 0 {name=l19 sig_type=std_logic lab=out_3}
C {devices/lab_pin.sym} 1140 -100 2 0 {name=l20 sig_type=std_logic lab=out_4}
C {devices/ipin.sym} 440 -660 2 0 {name=p1 lab=CLK}
C {devices/lab_pin.sym} 440 -620 0 0 {name=l21 sig_type=std_logic lab=CLK}
C {devices/ipin.sym} 570 -660 2 0 {name=p2 lab=VPWR}
C {devices/lab_pin.sym} 570 -620 0 0 {name=l22 sig_type=std_logic lab=VPWR}
C {devices/ipin.sym} 110 -480 0 0 {name=p3 lab=pha_0}
C {devices/lab_pin.sym} 160 -480 2 0 {name=l23 sig_type=std_logic lab=pha_0}
C {devices/ipin.sym} 110 -440 0 0 {name=p4 lab=pha_1}
C {devices/lab_pin.sym} 160 -440 2 0 {name=l24 sig_type=std_logic lab=pha_1}
C {devices/ipin.sym} 110 -400 0 0 {name=p5 lab=pha_2}
C {devices/lab_pin.sym} 160 -400 2 0 {name=l25 sig_type=std_logic lab=pha_2}
C {devices/ipin.sym} 110 -360 0 0 {name=p6 lab=pha_3}
C {devices/lab_pin.sym} 160 -360 2 0 {name=l26 sig_type=std_logic lab=pha_3}
C {devices/ipin.sym} 110 -320 0 0 {name=p7 lab=pha_4}
C {devices/lab_pin.sym} 160 -320 2 0 {name=l27 sig_type=std_logic lab=pha_4}
C {devices/opin.sym} 1400 -540 0 0 {name=p8 lab=out_0}
C {devices/opin.sym} 1400 -500 0 0 {name=p9 lab=out_1}
C {devices/opin.sym} 1400 -460 0 0 {name=p10 lab=out_2}
C {devices/opin.sym} 1400 -420 0 0 {name=p11 lab=out_3}
C {devices/opin.sym} 1400 -380 0 0 {name=p12 lab=out_4}
C {devices/lab_pin.sym} 1340 -540 0 0 {name=l28 sig_type=std_logic lab=out_0}
C {devices/lab_pin.sym} 1340 -500 0 0 {name=l29 sig_type=std_logic lab=out_1}
C {devices/lab_pin.sym} 1340 -460 0 0 {name=l30 sig_type=std_logic lab=out_2}
C {devices/lab_pin.sym} 1340 -420 0 0 {name=l31 sig_type=std_logic lab=out_3}
C {devices/lab_pin.sym} 1340 -380 0 0 {name=l32 sig_type=std_logic lab=out_4}
C {sky130_stdcells/dfxtp_1.sym} 540 -360 0 0 {name=x4 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 790 -380 0 0 {name=x5 VGND=VGND VNB=VGND VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 1020 -410 0 0 {name=x6 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 540 -260 0 0 {name=x7 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 790 -280 0 0 {name=x8 VGND=VGND VNB=VGND VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 1020 -310 0 0 {name=x9 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 540 -150 0 0 {name=x10 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 790 -170 0 0 {name=x11 VGND=VGND VNB=VGND VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 1020 -200 0 0 {name=x12 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 540 -50 0 0 {name=x13 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 790 -70 0 0 {name=x14 VGND=VGND VNB=VGND VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 1020 -100 0 0 {name=x15 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 725 -660 2 0 {name=p13 lab=VGND}
C {devices/lab_pin.sym} 725 -620 0 0 {name=l33 sig_type=std_logic lab=VGND}
