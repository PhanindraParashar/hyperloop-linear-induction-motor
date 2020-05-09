% p = 4 poles  L=2.44m  m =3phase  d = .01046m track      
% ws = wt = lambda/2

%gm = input('gm levitation in mm ');
gm = 2.5; 
%Nt = [];
%Ic = [];

%dia = 2.05; %in mm gauge 12
%dia = 1.08;% in mm gauge 18
h = 20:1:140;
%h = 60;
hi = h/1000;% h in m
p = 12;
%zt = 2:.01:3;
nt = 24;
%p = zt*nt;

L = 2.44;
H = 0.02+hi;
t = 0.127;
%h = 20; %in mm
dia = 1.63; %gauge 14 in mm
%dia = .8118; %gauge 20in mm


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
F = 6000;

%nt = 10:100;

ws = L.*((2.*nt)+1).^-1;
wa = ws/2; %wa is available space
wa = wa.*1000;% wa in mm
nturns = floor(wa/dia) -2;

Vi = L*t.*H;
Vnsl = (nt-1).*((hi*t).*ws);
Vf = Vi-Vnsl;
Mlim = 2700.*Vf;



q1 = (2*nt-1).*(2*p*m).^-1;

%lambda = (2*L)*(2*nt-1).^-1;

lambda = 2*ws;

alpha = pi*((m*q1).^-1);
kd = (sin(q1.*alpha/2)).*(q1.*sin(alpha/2)).^-1;
theta = (2*pi)*(nt-1).*(p.^-1);
kp = cos(theta/2);
kw = kp.*kd;



N = (nturns).*(h).*(nt/m).*(dia.^-1);

%wt = lambda/2;
wt = ws ;
tau = L.*p.^-1;
vs = 2*f*tau;
go = gm+d;

gamma = (4/pi)*(((ws/(2*go)).*atan(ws/(2*go))) -    log((1 + ((ws/(2*go)).^2))).^.5); 



kc = (lambda).*((lambda - gamma*go)).^-1;
ge = kc*go;
G = (2*mu0*f*tau.^2/(pi*(rhor/d))).*(ge.^-1);


wse = ws+go;

A = ((s*G).^-2)+1;



Xm = (24*mu0*f.*wse.*kw.*N.^2.*tau).*((pi*p*ge).^-1);
R2 = Xm/G;

%Ft = (m*I2*R2)/(A*vs*s);
i2 = (F.*A.*vs.*s).*((m*R2).^-1);
i = sqrt(i2);

%Nt = [Nt;nt];
%Ic = [Ic;i];



%Nt1 = Nt(2,:);
plot(h,Mlim,h,i)
grid on
    
