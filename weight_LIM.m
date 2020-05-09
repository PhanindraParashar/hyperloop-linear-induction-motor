%L = Input ('length of LIM');
L= 2.44;
H = 0.09;
t = 0.127;
h = 0.07;
nt = 10:1:100;
ws = L.*((2.*nt)+1).^-1;
wa = ws/2; %wa is available space
wa = wa.*1000;%wa in mm
Vi = L*t*H;
Vnsl = (nt-1).*((h*t).*ws);
Vf = Vi-Vnsl;
Mlim = 2700.*Vf;

plot (nt,Mlim,nt,wa)

grid on