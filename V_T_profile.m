t1 = 0:.01:.4;
v1 = 27.5*t1.^2;
s1 = 9.1666*(t1.^3);
a1 = 55*t1;
j1 = 55+t1-t1;

t2 = .4:.01:6.2;
v2 = 22*t2-4.4;
a2 = 22;
j2 = 0+t2-t2;
s2 = 11*(t2.^2)-(4.4*t2)+1;

t3 = 6.2:0.01:6.85;
v3 = (-15.7143*((t3).^2)+216.8571*(t3)-608.5);
a3 = (-31.4286*t3)+216.8571;
j3 = -31.4286+t3-t3;
s3 = (-5.2381.*((t3).^3)+108.42855*(t3.^2)-608.5*t3+1249);

t4 = 6.85:0.01:10.55;
v4 = 139.70+t4-t4;
a4 = 0;
j4 = 0+t4-t4;
s4 = 139.70*t4-472+t4-t4;

t5 = 10.55:0.01:10.85;
v5 = (-33*(t5).^2)+693*t5-3498.5;
a5 = (-66*(t5))+693;
j5 = -66+t5-t5;
s5 = (-11*t5.^3)+(346.5*t5.^2)-3498.5*t5+12262;

t6 = 10.85:0.01:15.8;
v6 = 350.6-19.8*t6;
a6 = -19.8;
j6 = 0+t6-t6;
s6 = 350.6*t6-9.9*(t6.^2)-1595;

t7 = 15.8:0.01:20;
v7 = 2.57539*t7.^2-101.1825*t7+993.492;
a7 = 5.15078*t7-101.1825;
j7 = 5.15078+t7-t7;
s7 = 0.85846*t7.^3-50.59125*t7.^2+993.492*t7-4980.8;

%plot(t1,a1,'blue',t2,a2,'blue',t3,a3,'blue',t4,a4,'blue',t5,a5,'blue',t6,a6,'blue',t7,a7,'blue')
plot(t1,v1,'blue',t2,v2,'blue',t3,v3,'blue',t4,v4,'blue',t5,v5,'blue',t6,v6,'blue',t7,v7,'blue')
%plot(t1,s1,'red',t2,s2,'red',t3,s3,'red',t4,s4,'red',t5,s5,'red',t6,s6,'red',t7,s7,'red')
%plot(t1,j1,t2,j2,t3,j3,t4,j4,t5,j5,t6,j6,t7,j7)
%plot(t5,s5)
title ('velocity vs Time')
xlabel ('Time in seconds')
ylabel ('velocity in m/s')

