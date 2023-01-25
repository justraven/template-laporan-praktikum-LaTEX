% REPRESENTASI TF KE SS
% Code by : Alim Satria

clear;
clc;

%-- init value --%
L_a = 0.5;%H
R_a = 1;%Ohm
K_tm = 0.01;%N-m/A
K_m = 0.01;%V-sec/rad
J = 0.01;%kg-m2
B = 0.1;%N-m-sec/rad

num = K_tm;
denum = [(J*L_a) (R_a*J + B*L_a) (R_a*B + K_tm*K_m)];

sys = tf(num,denum)

disp('Representasi dalam State Space :');

[A,B,C,D] = tf2ss(num,denum)