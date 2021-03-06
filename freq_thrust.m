P = 6;%no of poles
V = [];%sincronus speed
F = [];
F2 = [];
fr =[];
V_max = [];
Requ = [];

for f = 1:2000
    
    fr = [fr,f];
    
    kw = .8;
    sr = 4;
    
wt = 30;
wt = wt/1000;
ws = sr*wt;
 
L = 5*ws+6*wt;
tau = L/P;
v = 2*L*f/P;
V = [V,v];

s = .05;
m = 3;


gm = 15; 
gm = gm/1000;% mm to m


d = 12.7;% al subtrack thickness in mm
d = d/1000;% mm to m

d1 = 20/1000;


go = gm+d;
go1 = gm+d1;


Wse = ws+go;
Wse1 = ws+go1;
lambda = ws+wt;
q1 = tau/(m*lambda);
alpha = pi*((m*q1).^-1);
kd = (sin(q1.*alpha/2)).*(q1.*sin(alpha/2)).^-1;



wa = .9*ws/2;

I = 134;
dm = 5.18;% dia of coil
dm = dm/1000;

h = 140;
h = h/1000;

effT = .5;
N1 = floor(2*(h/dm)*(wa/dm)*effT);% No of turnsper phase


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
G2 = (2*mu0*f*tau^2/(pi*(rhor/d1))).*(ge.^-1);

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

var1 = (s*G).^-2;
i2 = I/sqrt(var1+1);
Pout = m*(i2^2*R2)*(1-s)/s;
Pin = Pout + m*I2*R1 + m*(i2^2)*R2;

Eff_LIM = Pout/Pin;


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

acc = 2*(Ft+150)/387;
%acc = (Ftact)/20;
velocity_max = sqrt(2*acc*480);
vmaref = 36*velocity_max;
V_max= [V_max,velocity_max];
end
plot(fr,F,fr,F2)
grid on