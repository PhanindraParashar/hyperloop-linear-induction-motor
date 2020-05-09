d = 1.3; %mm
i = 20; %amps

h = 90; %mm
L = 2320; %mm
nt = 20;
ns = nt-1;
wt = 40; %mm
ws = (L - (nt*wt))/ns; %mm
wa = floor(ws/2);

N = (floor(h/d)*floor(wa/d));

N = .9*N;
Ni = N*i;
Nik = Ni/1000;