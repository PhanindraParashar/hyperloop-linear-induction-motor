r=1.5*1000;


m1 = 150;
m2 = 160;
m3 = 190;


s = 450;
A = 4*s*r;
v = 10:.0001:200;
vk = 3.6*v; %vkmph

D = (A -v.^3);

N1 = (r*m1*v.^3);
p1 = N1.*(D.^-1);
P1 = p1/1000; %KW

N2 = (r*m2*v.^3);
p2 = N2.*(D.^-1);
P2 = p2/1000; %KW

N3 = (r*m3*v.^3);
p3 = N3.*(D.^-1);
P3 = p3/1000; %KW


plot(vk,P1)
grid on