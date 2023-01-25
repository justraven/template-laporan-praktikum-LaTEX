% HOMEWORK_1 
% Alim Satria Fi'i Wijaya Kusuma

num = [1];
denum = [1 12 20 0];
sys = tf(num, denum)
[A, B, C, D] = tf2ss(num, denum)
pole = [-3, -2, -1]
K = place(A,B,pole)

Af = A-B*K; T=ss(Af,B,C,D); T=tf(T);
step(T);