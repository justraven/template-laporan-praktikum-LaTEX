%PERBANDINGAN PERFORMA SISTEM SEBELUM DAN SESUDAH TUNING
%code by : Alim Satria

A = [0 1 0; 0 0 1; -6 -11 -6];
B = [0; 0; 10];
C = [1 0 0];
D = [0];

P = [(-2-2*(sqrt(3)*i));(-2+2*(sqrt(3)*i));-10];

K = acker(A,B,P)

T = ss(A,B,C,D);

Af = A-B*K;
T_MOD=ss(Af ,B,C,D);

step(T_MOD);
hold on;
step(T);
hold off;

disp('Performa sistem setelah dilakukan tuning:');
stepinfo(T_MOD)

disp('Performa sistem sebelum dilakukan tuning:');
stepinfo(T)