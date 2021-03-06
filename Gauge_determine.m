% p = 4 poles  L=2.44m  m =3phase  d = .01046m track      
% ws = wt = lambda/2

%gm = input('gm levitation in mm ');
gm = 4;

%Nt = [];
Ic = [];
Dia = [];



for dia = 0.08:1:1.08
    
Dia = [Dia,dia];
h = 50;
p = 40;    
L = 2.44;
%h = 80; %in mm
%dia = 3.66; %gauge 7 in mm
%dia = 0.81; %gauge 20in mm

m = 3;
d = .01046;
mu0 = 1.2566*10^-6;
rhor = .04*10^-6;

%nt = input('ent no of teeth ');
%f = input('Ent freq ');
f = 400;
%s = input('slip ');
s = .1;

gm = gm/1000;
%F = input('Thrust ');
F = 5000;
nt = 10:100;
q1 = (2*nt-1)/(2*p*m);

lambda = (2*L)*(2*nt-1).^-1;

alpha = pi*((m*q1).^-1);
kd = (sin(q1.*alpha/2)).*(q1.*sin(alpha/2)).^-1;
theta = (2*pi/p)*(nt-1);
kp = cos(theta/2);
kw = kp.*kd;



N = 3*(h)*(nt/m).*(dia.^-1);


wt = lambda/2;
ws = wt;
tau = L/p;
vs = 2*f*tau;
go = gm+d;

gamma = (4/pi)*(((ws/(2*go)).*atan(ws/(2*go))) -    log((1 + ((ws/(2*go)).^2))).^.5); 



kc = (lambda).*((lambda - gamma*go)).^-1;
ge = kc*go;
G = (2*mu0*f*tau^2/(pi*(rhor/d))).*(ge.^-1);


wse = ws+go;

A = ((s*G).^-2)+1;



Xm = (24*mu0*f.*wse.*kw.*N.^2.*tau).*((pi*p*ge).^-1);
R2 = Xm/G;

%Ft = (m*I2*R2)/(A*vs*s);
i2 = (F*A*vs*s)/(m*R2);
i = sqrt(i2);

%Nt = [Nt;nt];
Ic = [Ic;i];

end

%Nt1 = Nt(2,:);
plot(Dia,Ic)
grid on
    
