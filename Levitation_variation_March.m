

P = 7;%no of poles
V = [];%sincronus speed
F = [];
fr =[];
V_max = [];
Gm = [];
for gm = .01:1:1000
    
    Gm = [Gm,gm];
    kw = .9;
v = 140;    
wt = .06;
ws = 1.875*wt;
 
L = 6*ws+7*wt;
tau = L/P;
f = v*P/(2*L);
fr = [fr,f];
s = .1;
m = 3;



gm = gm/1000;% mm to m


d = 10.3;% al subtrack thickness in mm
d = d/1000;% mm to m

go = gm+d;


Wse = ws+go;
lambda = ws+wt;
q1 = tau/(m*lambda);
alpha = pi*((m*q1).^-1);
kd = (sin(q1.*alpha/2)).*(q1.*sin(alpha/2)).^-1;


wa = .9*ws/2;

dm = 1.3; % dia of coil
dm = dm/1000;

h = 130;
h = h/1000;

N1 = .5*(h/dm)*(wa/dm)*.9;% No of turnsper phase

%N1 = 2000; % No of turnsper phase
Nc = N1/(P*q1); % NO OF TURNS PERSLOT



gamma = (4/pi)*(((ws/(2*go)).*atan(ws/(2*go))) -    log((1 + ((ws/(2*go)).^2))).^.5); 



kc = (lambda).*((lambda - gamma*go)).^-1;
ge = kc*go;

mu0 = 1.2566*10^-6;
rhor = 2.65*10^-8;



G = (2*mu0*f*tau^2/(pi*(rhor/d))).*(ge.^-1);
A = ((s*G).^-2)+1;

Xm = (24*mu0*f.*Wse.*kw.*N1.^2.*tau).*((pi*P*ge).^-1);

R2 = Xm/G;
I = 20;
I2 = I.^2;

Ft = (m.*I2.*R2).*((A.*v.*s).^-1);
%i2 = (F*A*vs*s)/(m*R2);
%i = sqrt(i2);

F = [F,Ft];

acc = 2*Ft/400;
velocity_max = sqrt(2*acc*480);
V_max= [V_max,velocity_max];
end

plot (Gm,F)
grid on

