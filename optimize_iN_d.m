h = 90;%hieght of teeth in mm
%syms x y wt h fa nt;
x = .5:.01:12;
fa = 2;
wt = 15;
ws = fa*wt;

%d = 2.05;

nt = 7; %no of teeth
ns = nt-1;

nturns = h.*(x.^-1); % no of turns in 1 teeth
% ws = 36; % width of slot

L = nt*wt + ns*ws;

wa = ws/2;
nw = (wa).*(x.^-1);

N = nturns.*nw;  %turns for single tooth

  p1 = -0.0014543;
  p2 = 0.048646;
  p3 = -0.57145;
  p4 = 2.7169;
  p5 = -3.6833;
  p6 = 22.259;
  p7 = -8.5557;
  
  %x = input('dia in mm  ');
  i = p1*x.^6 + p2*x.^5 +p3*x.^4 + p4*x.^3 +p5*x.^2 + p6.*x +p7 ;
  
  z = i.*N;
  plot(x,z)
grid on