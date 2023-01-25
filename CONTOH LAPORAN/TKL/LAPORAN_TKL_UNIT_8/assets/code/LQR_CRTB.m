%ANALISIS CTRB SYSTEM
%Code by : Alim Satria

disp('---analisis crtb sistem---')

A = [-1 1;0 2];
B = [1; 0];
C = [1 0];
D = [0];

sys = ss(A,B,C,D)

system_co = ctrb(sys)
rank(system_co)