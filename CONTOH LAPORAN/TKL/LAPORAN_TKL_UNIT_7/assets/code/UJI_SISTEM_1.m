%PENGUJIAN SISTEM HASIL TUNING
%code by : Alim Satria

A = [0 1 0; 0 0 1; -6 -11 -6];
B = [0; 0; 10];
C = [1 0 0];
D = [0];

P = [(-2-2*(sqrt(3)*i));(-2+2*(sqrt(3)*i));-10];

K = acker(A,B,P)

Af = A-B*K;
T_MOD=ss(Af ,B,C,D);

step(T_MOD);