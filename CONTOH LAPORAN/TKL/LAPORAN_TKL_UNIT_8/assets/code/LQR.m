%VERIFIKASI ANALISIS LQR
%CODE BY : ALIM SATRIA

disp('---Verifikasi Analisis LQR---');

A = [0 1; 0 -1];
B = [0; 1];
C = [1 0];
D = 0;

Q = [1 0; 0 1];
R = 1;
[K,E] = lqr(A,B,Q,R)

%VERIFIKASI ANALISIS PENGUATAN
%CODE BY : ALIM SATRIA

disp('---Verifikasi Penguatan---');

N = [A B; C 0];
N_inv = inv(N)

Nx_Nu = N_inv *[0;0;1]

N_x = Nx_Nu(1:2,1);
N_u = Nx_Nu(3,1);
N_bar = N_u + K * N_x

%VARIASI INPUT MATRIKS Q DAN R
%CODE BY : ALIM SATRIA

disp('---Variasi input matriks Q dan R---');

Q_1 = [10 0; 0 10];
R_1 = 1;
 
[K_1] = lqr(A,B,Q_1,R_1)

Q_2 = [1 0; 0 1];
R_2 = 1;
 
[K_2] = lqr(A,B,Q_2,R_2)


Q_3 = [1 0; 0 1];
R_3 = 0.1;
 
[K_3] = lqr(A,B,Q_3,R_3)

Q_4 = [1 0; 0 1];
R_4 = 10;
 
[K_4] = lqr(A,B,Q_4,R_4)

%PERBANDINGAN PERFORMA SISTEM
%CODE BY : ALIM SATRIA

disp('---Perbandingan Performa sistem---');

Af_1 = A-B*K_1;
LQR_1 =ss(Af_1 ,B,C,D);
step(LQR_1);
hold on;

Af_2 = A-B*K_2;
LQR_2 =ss(Af_2 ,B,C,D);
step(LQR_2);
hold on;

Af_3 = A-B*K_3;
LQR_3 =ss(Af_3 ,B,C,D);
step(LQR_3);
hold on;

Af_4 = A-B*K_4;
LQR_4 =ss(Af_4 ,B,C,D);
step(LQR_4);
hold off;