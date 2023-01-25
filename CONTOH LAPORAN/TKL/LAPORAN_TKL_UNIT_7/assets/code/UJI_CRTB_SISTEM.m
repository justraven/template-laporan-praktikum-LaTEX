%UJI CONTROLLABILITY
%code by : Alim Satria

clear;
clc;

A = [0 1 0; 0 0 1; -6 -11 -6];
B = [0; 0; 10];
C = [1 0 0];
D = [0];

system = ss(A,B,C,D)

system_co = ctrb(system)
rank(system_co)