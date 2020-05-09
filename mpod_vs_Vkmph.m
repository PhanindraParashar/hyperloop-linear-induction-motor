rpw = 10000;
smax = 1000;
mc = 100;
mpr = 50;
Parx = 30000;

vmps = 80:.01:195;
vkmph = vmps*3.6;
Pow = (mc*rpw*(vmps).^3).*(2*smax*rpw-(vmps).^3).^-1;
Pow = Pow+Parx;

Pkw = Pow/1000;

mb = Pow/rpw;
mpod = mb+mc+mpr;


plot(mpod,vkmph)
title('rpw = 10Kw/kg ');
ylabel('Velocity in Kmph');
xlabel('mass of pod in Kg ');
grid on