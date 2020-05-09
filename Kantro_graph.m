M = 0.01:.0001:3;
v = M*347; %mps
vk = 3.6*v;
A = .6002;
md = M.^-2;
B = (1+5*md).^.5;
C = (1-.14285*md).^2.5;

r = A*B.*C;

plot(M,r)
grid on

