Qmax=16834;
g0=1491/Qmax;
g1=6214/Qmax;
sos=[ g0 g0*(-23636/Qmax)  g0  1 -13231/Qmax 15528/Qmax; g0  g0*(3306/Qmax)  g0 1 -11232/Qmax 15504/Qmax; g1 g1*(-18247/Qmax) g1 1 -14706/Qmax 16069/Qmax; g1 g1*(-5864/Qmax) g1 1 -10054/Qmax 16049/Qmax];
[b,a]=sos2tf(sos);
