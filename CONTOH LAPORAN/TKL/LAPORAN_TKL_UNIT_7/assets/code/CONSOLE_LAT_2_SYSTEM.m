sys =
 
             0.01
  ---------------------------
  0.005 s^2 + 0.06 s + 0.1001
 
Continuous-time transfer function.

Representasi dalam State Space :

system =
 
  a = 
           x1      x2
   x1     -12  -20.02
   x2       1       0
 
  b = 
       u1
   x1   1
   x2   0
 
  c = 
       x1  x2
   y1   0   2
 
  d = 
       u1
   y1   0
 
Continuous-time state-space model.


system_co =

     1   -12
     0     1


ans =

     2


K_Pole =

   -6.6800   -5.5800


K_Acker =

   -6.6800   -5.5800

Performa sistem setelah dilakukan tuning:

ans = 

        RiseTime: 0.5597
    SettlingTime: 1.5734
     SettlingMin: 0.1247
     SettlingMax: 0.1449
       Overshoot: 4.5986
      Undershoot: 0
            Peak: 0.1449
        PeakTime: 1.1599

Performa sistem sebelum dilakukan tuning:

ans = 

        RiseTime: 1.1351
    SettlingTime: 2.0652
     SettlingMin: 0.0899
     SettlingMax: 0.0998
       Overshoot: 0
      Undershoot: 0
            Peak: 0.0998
        PeakTime: 3.6758