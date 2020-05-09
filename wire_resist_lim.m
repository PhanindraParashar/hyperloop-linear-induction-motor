di = input('Enter dia in mm');
di = di/1000; %di in m

wt = input('Enter wt in cm ');
wt = wt/100; % wt in m

p = (.254+2*wt);
nw =.06/di;
L = 2.44;

lwire = nw*p*(L/(2*wt));
Aw = (pi/4)*di*di;

rho = 1.92*10^-8;

R = rho*lwire/Aw;