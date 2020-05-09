lambda = input('enter value of lambda ');
tau = input('ent tau ');
f = input('Ent freq ');
s = input('slip ');
gm = input('gm levitation ');
F = input('Thrust ');

R2 = input('R2 ');
m = 3;
d = .01046;
mu0 = 1.2566*10^-6;
rhor = .04*10^-6;
%ws = .106;
vs = 2*f*tau;
go = gm+d;

ws = 12*lambda -2.44; 
gamma = (4/pi)*(((ws/(2*go)).*atan(ws/(2*go))) -    log((1 + ((ws/(2*go)).^2))).^.5); 



kc = (lambda).*((lambda - gamma*go)).^-1;
ge = kc*go;
G = (2*mu0*f*tau^2/(pi*(rhor/d))).*(ge.^-1);
A = ((s*G).^-2)+1;

%Ft = (m*I2*R2)/(A*vs*s);
i2 = (F*A*vs*s)/(m*R2);
i = sqrt(i2);



