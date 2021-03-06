clear all; 
clc; %Assign necessary constants and parameters
mu0 = 4*pi*10^-7;
rhow = 19.27*10^-9; 
rhor = 28.85*10^-9;
btmax = 1.6; 
bymax = 1.3;
J1 = 6e6; %Assign desired values for certain variables
d= input('Enter Aluminum thickness (in meters) = ');
m = input('Enter the number of phases = '); 
Vline = input('Enter the primary line to line voltage = '); 
V1 = Vline/sqrt(3);
f = input('Enter the supply frequency = '); 
p = input('Enter the number of poles = ');
q1=input('Enter the number of slots per pole per phase= ');
Srated = input('Enter the rated slip = ');
Ws = input('Enter the width of the stator = ');  %Data from the PCP design procedure 
Fsprime = input('Enter the target thrust = '); 
Vcrated= input('Enter rated rotor velocity = '); 
 

Vs= Vcrated/(1 - Srated);
tau = Vs/(2*f);
lambda = tau/(m*q1);
Ls = p*tau;  
for i = 1:30    
    N1 = p*q1*i;
    ncos0 = 0.2;
    ncos1(i) = 1;
    while abs(ncos0 - ncos1(i))>0.0001 
        I1prime = (Fsprime*Vcrated)/(m*V1*ncos0);  
        Aw = I1prime/J1; 
        As = (10*i*Aw)/7; 
        ws = lambda/2;    
        wt = ws;       
        hs = As/ws;    
        gm = 0.01;     
        go = gm + d;   
        gamma = (4/pi)*(((ws/(2*go))*atan(ws/(2*go))) -    log(sqrt(1 + ((ws/(2*go))^2))));       
        kc = lambda/(lambda - gamma*go); 
        ge = kc*go;     
        kw = sin(pi/(2*m))/(q1*sin(pi/(2*m*q1)));  
        G = 2*mu0*f*tau^2/(pi*(rhor/d)*ge);     
        a=pi/2;  
        ae=a+ge/2; 
        Lce=tau;   
        beta1=1; 
        lamda_s= (hs*(1+3*beta1))/(12*ws);   
        lamda_e= (0.3*(3*beta1-1)); 
 
 
        lamda_d= 5*(ge/ws)/(5+4*(go/ws));                      %Equivalent Circuit Components  
        R1(i)=rhow*(4*a+2*Lce)*J1*N1/I1prime;    
        a1(i)=lamda_s*(1+3/p)+lamda_d;     
        b1(i)=lamda_e*Lce;     
        X1(i)=8*mu0*pi*f*((a1(i)*2*a/q1)+b1(i))*N1^2/p;  
        Xm(i)= (48*mu0*pi*f*ae*kw*N1^2*tau)/(pi^2*p*ge);   
        R2(i) = Xm(i)/G; 
        Z(i)=R1(i)+j*X1(i)+((j*R2(i)*Xm(i))/Srated)/((R2(i)/Srated) + j*Xm(i));
        I1(i) = V1/abs(Z(i));   
        I2(i) = j*I1(i)*Xm(i)/(R2(i)/Srated+j*Xm(i)); 
        Im(i) = I1(i) - I2(i);              %Actual TLIM Thrust  
        Fs(i) = (m*abs(I1(i))^2*R2(i))/(((1/(Srated*G)^2)+   1)*Vs*Srated);    
        diff(i) = Fs(i) - Fsprime;   
        dmin = min(abs(diff));    
        Pout = Fs*Vcrated;     
        Pin=Pout+m*abs(I2(i))^2*R2(i)+m*abs(I1(i))^2*R1(i);  
        eta = Pout/Pin;   
        PF = cos(angle(Z(i)));  
        ncos1(i)=eta*PF;   
        ncos0=(ncos0+ncos1(i))/2; 
    end;
end;
k = 1; 
 
while dmin~=abs(diff(k)) 
    k = k + 1; 
end;
Nc = k; 
N1 = p*q1*Nc; 
Fs = Fs(k);
I1 = I1(k);
ncos1 = ncos1(k);
A=[3 5.8;4 5.189;5 4.62;6 4.1148;7 3.665;8 3.2639;9 2.9057;10 2.588 ];
guage=0;
while (guage<8)    
    guage=guage+1;
    pw = 0;     
    r=0;     
    wt = 1;
    wtmin= 0;
    g=0;
    r=0;
    while (wt-wtmin)>0.0152  
        r=r+1;   
        g=g+1;   
        wire_d=A(guage,2);
        pw = pw + 1; 
        ws = (wire_d*10^-3*pw) + 2.2*10^-3; 
        wt = lambda - ws; 
        Aw = pw*pi/4*wire_d^2*1e-6; 
        As = (10*Nc*Aw)/7; 
        hs = As/ws;    
        gm = 0.01;  
        go = gm + d;
        gamma=(4/pi)*(((ws/(2*go))*atan(ws/(2*go)))-log(sqrt(1 + ((ws/(2*go))^2)))); 
        kc = lambda/(lambda - gamma*go);
        ge = kc*go; 
        G = 2*mu0*f*tau^2/(pi*(rhor/d)*ge);  
        kw=sin(pi/(2*m))/(q1*sin(pi/(2*m*q1))); 
        a=pi/2;   
        ae=a+ge/2;
        Lce=tau;  
        beta1=1; 
        lamda_s= (hs*(1+3*beta1))/(12*ws);  
        lamda_e= (0.3*(3*beta1-1));     
        lamda_d= 5*(ge/ws)/(5+4*(go/ws));               %Equivalent Circuit Components
        R1=rhow*(4*a+2*Lce)*J1*N1/I1prime;   
        a1=lamda_s*(1+3/p)+lamda_d;   
        b1=lamda_e*Lce;  
        X1=8*mu0*pi*f*((a1*2*a/q1)+b1)*N1^2/p;   
        Xm=(48*mu0*pi*f*ae*kw*N1^2*tau)/(pi^2*p*ge); 
        R2 = Xm/G;  
        Z=R1+j*X1+(R2/Srated*j*Xm)/(R2/Srated+j*Xm); 
        I1 = V1/abs(Z); 
        I2 = j*I1*Xm/(R2/Srated+j*Xm); 
        Im=I1-I2; 
        wtmin=2*sqrt(2)*m*kw*N1*abs(Im)*mu0*lambda/(pi*p*ge*btmax);   
    end; 
    hy=4*sqrt(2)*m*kw*N1*abs(Im)*mu0*Ls/(pi*pi*p*p*ge*bymax);
    para_wires(guage)=pw;  
    slot_width(guage)=ws; 
    tooth_width(guage)=wt;
    min_toothwidth(guage)=wtmin;
    height_slot(guage)=hs; 
    Area_wire(guage)=Aw; 
    Area_slot(guage)=As; 
    Num_c(guage)=Nc; 
    Num_1(guage)=N1;
    Sta_I(guage)=I1;
    gap_e(guage)=ge;
    current_den(guage) = abs(I1)/Aw; 
    height_yoke(guage)=4*sqrt(2)*m*kw*N1*(Im)*mu0*Ls/(pi*pi*p*p*ge*bymax);
    final_thrust(guage)=(m*abs(I1)^2*R2)/(((1/(Srated*G)^2 )+1)*Vs*Srated);
    output(guage)=final_thrust(guage)*Vcrated; 
    input(guage)=output(guage)+m*abs(I2)^2*R2+m*abs(I1)^2* R1
    efficiency(guage)= output(guage)/input(guage); 
    difference(guage)=final_thrust(guage)-Fsprime;
    diffmin(guage) = min(abs(difference));
end;
kk = min(diffmin);
jj=1 
while kk~=abs(diffmin(jj)) 
    jj = jj + 1;
end;
best_wireguage=A(jj,1)  
%$$$ To Generate the Characteristic curves $$$  
vel_sta= 17.22; 
slip= 0.1; e=1; 
for slip=0.000001:0.01:1 
    vel_rot(e)=vel_sta*(1-slip); 
    impz(e) = R1+j*X1+(R2/slip*j*Xm)/(R2/slip+j*Xm); 
    i1(e) = V1/abs(impz(e));
    i2(e) = j*i1(e)*Xm/(R2/slip+j*Xm); 
    im(e) = i1(e)-i2(e);
    Force(e)=(m*(abs(i1(e)))^2*R2)/(((1/(slip*G)^2)+1)*vel_sta*slip); 
    out_pow(e) = Force(e)*vel_rot(e); 
    in_pow(e)=out_pow(e)+m*abs(i2(e))^2*R2+m*abs(i1(e))^2* R1;
    eff(e) = out_pow(e)/in_pow(e);
    e=e+1;
end;
figure(1);
plot(vel_rot,Force,'green');
xlabel('vel_rot');
ylabel('force');
hold on;
hold on;
plot([15.5 15.5],[0,Fs]);
hold on;
plot([0 15.5],[Fs Fs]);
hold on;
figure(2);
plot(vel_rot,eff*100,'green');
hold on;
plot([15.5 15.5],[0 eta*100]);
hold on;
plot([0 15.5],[eta*100,eta*100]);
hold on; 
