v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -180 40 -120 {
lab=#net1}
N 40 -180 130 -180 {
lab=#net1}
N 460 -260 460 -120 {
lab=#net2}
N 205 -255 205 -230 {
lab=#net2}
N 205 -260 205 -255 {
lab=#net2}
N 205 -260 460 -260 {
lab=#net2}
N 205 -135 205 -20 {
lab=GND}
N 40 -20 205 -20 {
lab=GND}
N 40 -60 40 -20 {
lab=GND}
N 205 -20 460 -20 {
lab=GND}
N 460 -60 460 -20 {
lab=GND}
N 210 -20 210 -0 {
lab=GND}
C {devices/vsource.sym} 40 -90 0 0 {name=Vgg value=0 savecurrent=false}
C {devices/vsource.sym} 460 -90 0 0 {name=Vdd value=0.001 }
C {AOSTFT_VLG_rel1023_E.sym} 130 -160 0 0 {name=x1 model=VLG spiceprefix=X }
C {devices/code.sym} 540 -405 0 0 {name=MODEL_TFT only_toplevel=false value="

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
C {devices/code_shown.sym} 550 -230 0 0 {name=SIMCODE only_toplevel=false value="
.param param_capmod = 1

.subckt AOSTFT_VLG_rel1023_E D G S
	N1 D G S VLG
.ends AOSTFT_VLG_rel1023_E

*.dc vgg -4  5   0.05   vdd 0.1 0.1   0
.dc vdd  0  5   0.05   vgg   3   5   1  
.control
	pre_osdi /home/alex/Desktop/EDA/MALEMAN/AOSTFT_VLG_rel1023_E.osdi
.endc
"}
C {devices/gnd.sym} 210 0 0 0 {name=l1 lab=GND}
