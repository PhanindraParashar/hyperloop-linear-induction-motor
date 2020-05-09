
% length in m
P = 9;%no of poles
V = [];%sincronus speed
F = [];
for v= 20:150
    V = [V,v];
   
%L = 1.32;    
ws = .06;
wt = .1125;
L = 9*wt+8*ws;

tau = L/P;
f = V*P/(2*L);
s = .1;
m = 3;


gm = 4;%levitation in mm
gm = gm/1000;% mm to m


d = 10.3;% al subtrack thickness in mm
d = d/1000;% mm to m

go = gm+d;


Wse = ws+go;
lambda = ws+wt;
q1 = tau/(m*lambda);
alpha = pi*((m*q1).^-1);
kd = (sin(q1.*alpha/2)).*(q1.*sin(alpha/2)).^-1;

kw = 1;


N1 = 2000; % No of turnsper phase
Nc = N1/(P*q1); % NO OF TURNS PERSLOT



gamma = (4/pi)*(((ws/(2*go)).*atan(ws/(2*go))) -    log((1 + ((ws/(2*go)).^2))).^.5); 



kc = (lambda).*((lambda - gamma*go)).^-1;
ge = kc*go;

mu0 = 1.2566*10^-6;
rhor = .04*10^-6;



G = (2*mu0*f*tau^2/(pi*(rhor/d))).*(ge.^-1);
A = ((s*G).^-2)+1;

Xm = (24*mu0*f.*Wse.*kw.*N1.^2.*tau).*((pi*P*ge).^-1);

R2 = Xm/G;
I = 20;
I2 = I.^2;

Ft = (m*I2*R2)/(A*V*s);
%i2 = (F*A*vs*s)/(m*R2);
%i = sqrt(i2);

F = [F,Ft];
end

plot (V,F)
grid on

