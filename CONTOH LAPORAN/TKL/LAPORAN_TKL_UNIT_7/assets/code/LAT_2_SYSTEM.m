% UJI RESPON KECEPATAN MOTOR DC
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

% step(sys);
% stepinfo(sys)

disp('Representasi dalam State Space :');

[A,B,C,D] = tf2ss(num,denum);

system = ss(A,B,C,D)

system_co = ctrb(system)
rank(system_co)

%MENCARI NILAI K 
%Code by : Alim Satria
P = [(-2.66-3.8*(sqrt(0.51)*i));(-2.66+3.8*(sqrt(0.51)*i))];

K_Pole= place(A,B,P)
K_Acker = acker(A,B,P)

T = ss(A,B,C,D);
Af = A-B*K_Acker;
T_MOD=ss(Af ,B,C,D);

step(T_MOD);
hold on;
step(T);
hold off;

disp('Performa sistem setelah dilakukan tuning:');
stepinfo(T_MOD)

disp('Performa sistem sebelum dilakukan tuning:');
stepinfo(T)