clear;
clc;

k = 150;%N/m
b = 1;%N/(m/s)
m = 1;%kg
u = 10;%N

A = [0 1; -k/m -b/m];
B = [0; 1/m];
C = [1 0];
D = [0];

sys = (ss(A,B,C,D) * u)

step(sys);