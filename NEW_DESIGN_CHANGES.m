

P = 6;%no of poles
V = [];%sincronus speed
F = [];
F2 = [];
fr =[];
V_max = [];
Requ = [];
 f= 300;
    
    
    
    kw = .8;
    sr = 1.5;
    
wt = .03;
ws = sr*wt;
 
L = 5*ws+6*wt;
tau = L/P;
v = 2*L*f/P;
V = [V,v];

s = .10;
m = 3;


gm = 10;%levitation in mm
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

I = 47;
dm = 2.3;% dia of coil
dm = dm/1000;

h = 50;
h = h/1000;

N1 = 2*(h/dm)*(wa/dm)*.5;% No of turnsper phase

ext = .07;
per = 2*((2*wa+wt)+ext);

rocu = 1.68*10^-8;
Aw = (pi/4)*(dm^2);
R1 = rocu*(N1*per)/Aw;

%N1 = 1900; % No of turnsper phase
Nc = N1/(P*q1); % NO OF TURNS PERSLOT



gamma = (4/pi)*(((ws/(2*go)).*atan(ws/(2*go))) -    log((1 + ((ws/(2*go)).^2))).^.5); 



kc = (lambda).*((lambda - gamma*go)).^-1;
ge = kc*go;

mu0 = 1.2566*10^-6;
rhor = 4*10^-8;
rhor2 = 6*10^-8;

Length_wire = m*(per)*N1;
M_wind = (pi/4)*dm*dm*Length_wire*8990;
M_LimT = (.02*L*ext*2770+6*h*wt*ext*2770);
Mass = M_wind + M_LimT;


G = (2*mu0*f*tau^2/(pi*(rhor/d))).*(ge.^-1);
G2 = (2*mu0*f*tau^2/(pi*(rhor2/d))).*(ge.^-1);

A = ((s*G).^-2)+1;
A2 = ((s*G2).^-2)+1;

Xm = (24*mu0*f.*Wse.*kw.*N1.^2.*tau).*((pi*P*ge).^-1);

thetap = 180;
kp = sind(thetap/2);
lams = (h*(1+(3*kp)))/(12*ws);
lame = .3*((3*kp)-1);
lamd = (5*ge/ws)/(5 + (4*ge/ws));


lce = (thetap/180)*tau;

T1 = ((lams*(1+(3/P)) + lamd)*(ws/q1))+(lame*lce);

X1 = (2.*mu0.*pi.*f.*T1.*N1.^2)/P;

R2 = Xm/G;
R22 = Xm/G2;



r1 = R2/s;

Req = ((r1*Xm)/(r1+Xm))+X1 +R1;
Volt = I*Req;
Requ = [Requ,Req];

I2 = I.^2;

Ft = (m.*I2.*R2).*((A.*v.*s).^-1);
Ft2 = (m.*I2.*R22).*((A.*v.*s).^-1);
Ftact = Ft - 100;
%i2 = (F*A*vs*s)/(m*R2);
%i = sqrt(i2);

F = [F,Ft];
F2 = [F2,Ft2];
Fact = F -100;

Vmec = (1-s)*v;
Vmecref = 3.6*Vmec;

acc = 2*(Ft)/380;
%acc = (Ftact)/20;
velocity_max = sqrt(2*acc*480);
vmaref = 36*velocity_max;
V_max= [V_max,velocity_max];




