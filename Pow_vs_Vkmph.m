rpw = 10000;
smax = 1000;
mc = 180;
Parx = 30000;

vmps = 80:.01:195;
vkmph = vmps*3.6;
Pow = (mc*rpw*(vmps).^3).*(4*smax*rpw-(vmps).^3).^-1;
Pow = Pow+Parx;

Pkw = Pow/1000;

plot(Pkw,vkmph)
title('rpw = 10Kw/kg ');
ylabel('Velocity in Kmph');
xlabel('Power in Kw ');
grid on