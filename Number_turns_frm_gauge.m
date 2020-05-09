h = 90;%hieght of teeth in mm

fa = 2;
wt = 40;
ws = fa*wt;

x = [.51 .64 .81 1 1.3 1.6 2.1 2.6 3.3 4.1 5.2 6.5 7.4 8.3 9.3 10.4 11.7];
i = [3.5 5 6 9.5 20 24 34 52 75 95 120 170 180 200 225 275 325];

nt = 20; %no of teeth
ns = nt-1;


nturns = floor(h.*(x.^-1)); % no of turns in 1 teeth
% ws = 36; % width of slot

L = nt*wt + ns*ws;

wa = ws/2;
%wa = ws;
nw = floor((wa).*(x.^-1))-1;

N = nturns.*nw;  %turns for single tooth
z = i.*N;

plot(x,i)
grid on