v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 945 145 1745 545 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 20 -180 20 -130 {
lab=vout}
N 20 -35 20 25 {
lab=GND}
N 20 -290 20 -240 {
lab=VDD}
N -285 -15 -285 5 {
lab=GND}
N -285 -90 -285 -75 {
lab=VDD}
N -195 -5 -195 15 {
lab=GND}
N -195 -80 -195 -65 {
lab=vin}
N -80 -80 -55 -80 {
lab=vin}
N 20 -155 120 -155 {
lab=vout}
N -195 -80 -80 -80 {
lab=vin}
N 410 -125 410 -75 {
lab=vout2}
N 410 20 410 80 {
lab=GND}
N 410 -100 510 -100 {
lab=vout2}
N 410 -255 410 -220 {
lab=VDD}
N 335 -235 335 -170 {
lab=VDD}
N 335 -235 410 -235 {
lab=VDD}
N 305 -25 335 -25 {
lab=vin}
N 820 -125 820 -75 {
lab=vout3}
N 820 20 820 80 {
lab=GND}
N 820 -100 920 -100 {
lab=vout3}
N 820 -255 820 -220 {
lab=VDD}
N 715 -25 745 -25 {
lab=vin}
N 745 -175 745 -100 {
lab=vout3}
N 745 -100 820 -100 {
lab=vout3}
N 1260 -105 1260 -55 {
lab=#net1}
N 1260 40 1260 100 {
lab=GND}
N 1260 -80 1360 -80 {
lab=#net1}
N 1260 -235 1260 -200 {
lab=VDD}
N 1185 -215 1185 -150 {
lab=VDD}
N 1185 -215 1260 -215 {
lab=VDD}
N 1155 -5 1185 -5 {
lab=vin}
N 1610 -95 1610 -45 {
lab=vout4}
N 1610 50 1610 110 {
lab=GND}
N 1610 -70 1710 -70 {
lab=vout4}
N 1610 -225 1610 -190 {
lab=VDD}
N 1505 5 1535 5 {
lab=vin}
N 1490 -140 1535 -140 {
lab=#net1}
N 1490 -140 1490 -80 {
lab=#net1}
N 1360 -80 1490 -80 {
lab=#net1}
C {AOSTFT_VLG_rel1023_E.sym} -55 -60 0 0 {name=x1}
C {devices/res.sym} 20 -210 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 20 25 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 20 -290 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -285 -45 0 0 {name=V1 value=2 savecurrent=false}
C {devices/gnd.sym} -285 5 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -285 -90 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} -195 -35 0 0 {name=Vgg value=0 savecurrent=false}
C {devices/gnd.sym} -195 15 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -70 -80 3 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 120 -155 3 0 {name=p2 sig_type=std_logic lab=vout}
C {devices/code.sym} 760 245 0 0 {name=MODEL_TFT only_toplevel=false value="

.model VLG TFT TYPE =1				
+TNOM		=27
+L		=40e-6
+W		=160e-6
+TOX		=22e-9
+TSI		=15e-9
+TPAS		=400e-9
+LOVDS		=5e-6
+LOVTDS		=5e-6
+EPS		=9
+EPSI		=7
+EPSPAS		=3.9
+MU1		=8.98
+VT0		=-2.27
+GAMMA		=0.259
+RS		=75
+RD         	=75
+ALPHAS		=0.727
+M		=1.63
+LAMBDA		=-0.0569
+DELTA		=0
+MUB1		=3.81
+GAMMAB		=0.76
+VFB		=-2.89
+S		=0.237
+V1A		=-1.793
+V1		=-0.47
+Q1		=33.7
+V2		=1.11
+Q2		=0.66
+I0		=5E-13
+VDSlin		=0.1
+V3		=0
+Q3		=0
+ALPHASS	=0
+CGGDEP		=4.1e-12
+CGGACU		=19.6e-12
+MM		=0.0
+a		=0.00
+DD		=0.0
+VAC		=0.
+capmod 	=param_capmod
"}
C {devices/code_shown.sym} -65 140 0 0 {name=SIMCODE only_toplevel=false value="
.param param_capmod = 1

.subckt AOSTFT_VLG_rel1023_E D G S
	N1 D G S VLG
.ends AOSTFT_VLG_rel1023_E


.dc vgg   0   3   0.1  
.control
	pre_osdi /home/alex/Desktop/EDA/MALEMAN/AOSTFT_VLG_rel1023_E.osdi
	run
	setplot dc1
	plot vout vout2 vout3 vout4
.endc
"}
C {AOSTFT_VLG_rel1023_E.sym} 335 -5 0 0 {name=x2}
C {devices/gnd.sym} 410 80 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 410 -255 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 510 -100 3 0 {name=p3 sig_type=std_logic lab=vout2}
C {AOSTFT_VLG_rel1023_E.sym} 335 -150 0 0 {name=x3}
C {devices/lab_pin.sym} 305 -25 3 0 {name=p4 sig_type=std_logic lab=vin}
C {AOSTFT_VLG_rel1023_E.sym} 745 -5 0 0 {name=x4}
C {devices/gnd.sym} 820 80 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} 820 -255 0 0 {name=l9 lab=VDD}
C {devices/lab_pin.sym} 920 -100 3 0 {name=p5 sig_type=std_logic lab=vout3}
C {AOSTFT_VLG_rel1023_E.sym} 745 -150 0 0 {name=x5}
C {devices/lab_pin.sym} 715 -25 3 0 {name=p6 sig_type=std_logic lab=vin}
C {AOSTFT_VLG_rel1023_E.sym} 1185 15 0 0 {name=x6}
C {devices/gnd.sym} 1260 100 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 1260 -235 0 0 {name=l11 lab=VDD}
C {AOSTFT_VLG_rel1023_E.sym} 1185 -130 0 0 {name=x7}
C {AOSTFT_VLG_rel1023_E.sym} 1535 25 0 0 {name=x8}
C {devices/gnd.sym} 1610 110 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1610 -225 0 0 {name=l13 lab=VDD}
C {devices/lab_pin.sym} 1710 -70 3 0 {name=p8 sig_type=std_logic lab=vout4}
C {AOSTFT_VLG_rel1023_E.sym} 1535 -120 0 0 {name=x9}
C {devices/lab_pin.sym} 1155 -5 3 0 {name=p7 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 1505 5 3 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/launcher.sym} 765 420 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_inversores.raw dc"
}
