% p = 4 poles  L=2.44m  m =3phase  d = .01046m track      
% ws = wt = lambda/2

%gm = input('gm levitation in mm ');
gm = 2.5; 
%Nt = [];
%Ic = [];

%dia = 2.05; %in mm gauge 12
%dia = 1.08;% in mm gauge 18
h = 20:1:140;
%h = 100;
hi = h/1000;% h in m
p = 4;
%zt = .5:.01:.1;
nt = 8;
%p = zt*nt;

L = .832; 
H = 0.02+hi;
t = 0.127;
%X = .1:0.01:100;
X = 4;
%h = 20; %in mm
dia = 1.63; %gauge 14 in mm
%dia = .8118; %gauge 20in mm


m = 3;
d = .01046;
mu0 = 1.2566*10^-6;
rhor = X.*10^-8;

%nt = input('ent no of teeth ');
%f = input('Ent freq ');
f = 250;
fa = 2;
%s = input('slip ');
s = .1;

gm = gm/1000;
%F = input('Thrust ');
F = 5500;

%nt = 10:100;

%ws = L.*((2.*nt)+1).^-1;
wt = L.*(((fa+1).*nt)+1).^-1;
ws = wt.*fa ;
wa = ws/2; %wa is available space
wa = wa.*1000;% wa in mm
nturns = floor(wa/dia) -6;

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

tau = L.*p.^-1;
vs = 2*f*tau;
vtravel = (1-s)*vs;
go = gm+d;

gamma = (4/pi)*(((ws/(2*go)).*atan(ws/(2*go))) -    log((1 + ((ws/(2*go)).^2))).^.5); 



kc = (lambda).*((lambda - gamma*go)).^-1;
ge = kc*go;
G = (2*mu0*f*tau.^2.*((pi.*(rhor.*(d^-1)))).^-1.*(ge.^-1));


wse = ws+go;

A = ((s*G).^-2)+1;

i = 20;
I2 = i.^2;
Xm = (24*mu0*f.*wse.*kw.*N.^2.*tau).*((pi*p*ge).^-1);
R2 = Xm.*(G.^-1);

%Ft = (m*I2.*R2).*((A*vs*s).^-1);
i2 = (F.*A.*vs.*s).*((m*R2).^-1);
i = sqrt(i2);

%Nt = [Nt;nt];
%Ic = [Ic;i];

%plot(X,i)
grid on

%Nt1 = Nt(2,:);
plot(h,i,h,Mlim)
xlabel('hieght of teeth')
grid on
    
