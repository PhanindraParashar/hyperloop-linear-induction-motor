function varargout = GUI_ALL_Graph(varargin)
% 
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_ALL_Graph_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_ALL_Graph_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI_ALL_Graph is made visible.
function GUI_ALL_Graph_OpeningFcn(hObject, eventdata, handles, varargin)
%
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1)

function varargout = GUI_ALL_Graph_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function wt_box_Callback(hObject, eventdata, handles)

function wt_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sr_box_Callback(hObject, eventdata, handles)

function sr_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_box_Callback(hObject, eventdata, handles)
function h_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dm_box_Callback(hObject, eventdata, handles)
function dm_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_box_Callback(hObject, eventdata, handles)
function d_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function I_box_Callback(hObject, eventdata, handles)
function I_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gm_box_Callback(hObject, eventdata, handles)
function gm_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function effT_box_Callback(hObject, eventdata, handles)
function effT_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_box_Callback(hObject, eventdata, handles)
function f_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_box_Callback(hObject, eventdata, handles)
function L_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Mass_box_Callback(hObject, eventdata, handles)
function Mass_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N1_box_Callback(hObject, eventdata, handles)
function N1_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R1_box_Callback(hObject, eventdata, handles)
function R1_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R2_box_Callback(hObject, eventdata, handles)
function R2_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X1_box_Callback(hObject, eventdata, handles)
function X1_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Xm_box_Callback(hObject, eventdata, handles)
function Xm_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Req_box_Callback(hObject, eventdata, handles)
function Req_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Volts_box_Callback(hObject, eventdata, handles)
function Volts_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function F_box_Callback(hObject, eventdata, handles)
function F_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Vmec_box_Callback(hObject, eventdata, handles)
function Vmec_box_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Eff_LIM_Callback(hObject, eventdata, handles)
function Eff_LIM_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pin_Callback(hObject, eventdata, handles)
function Pin_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Length_wire_Callback(hObject, eventdata, handles)
function Length_wire_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M_wind_Callback(hObject, eventdata, handles)
function M_wind_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i2_Callback(hObject, eventdata, handles)
function i2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
P = 6;%no of poles
V = [];%sincronus speed
F = [];
F2 = [];
fr =[];
V_max = [];
Requ = [];

    f = str2num(get(handles.f_box,'String'));
    fr = [fr,f];
    
    kw = .8;
    sr = str2num(get(handles.sr_box,'String'));
    
wt = str2num(get(handles.wt_box,'String'));
ws = sr*wt;
 
L = 5*ws+6*wt;
tau = L/P;
v = 2*L*f/P;
V = [V,v];

s = .10;
m = 3;


gm = str2num(get(handles.gm_box,'String'));%levitation in mm
gm = gm/1000;% mm to m


d = str2num(get(handles.d_box,'String'));% al subtrack thickness in mm
d = d/1000;% mm to m

go = gm+d;


Wse = ws+go;
lambda = ws+wt;
q1 = tau/(m*lambda);
alpha = pi*((m*q1).^-1);
kd = (sin(q1.*alpha/2)).*(q1.*sin(alpha/2)).^-1;



wa = .9*ws/2;

I = str2num(get(handles.I_box,'String'));
dm = str2num(get(handles.dm_box,'String'));% dia of coil
dm = dm/1000;

h = str2num(get(handles.h_box,'String'));
h = h/1000;

effT = str2num(get(handles.effT_box,'String'));
N1 = 2*(h/dm)*(wa/dm)*effT;% No of turnsper phase

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
G2 = (2*mu0*f*tau^2/(pi*(rhor2/d))).*(ge.^-1);

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

acc = 2*(Ft)/380;
%acc = (Ftact)/20;
velocity_max = sqrt(2*acc*480);
vmaref = 36*velocity_max;
V_max= [V_max,velocity_max];
set (handles.L_box,'String',L)
set (handles.Mass_box,'String',Mass)
set (handles.N1_box,'String',N1)
set (handles.R1_box,'String',R1)
set (handles.R2_box,'String',R2)
set (handles.X1_box,'String',X1)
set (handles.Xm_box,'String',Xm)

set (handles.Req_box,'String',Req)
set (handles.Volt_box,'String',Volt)
set (handles.F_box,'String',F)
set (handles.Vmec_box,'String',Vmec)
set (handles.Eff_LIM_box,'String',Eff_LIM)

set (handles.Pin_box,'String',Pin)
set (handles.Length_wire_box,'String',Length_wire)
set (handles.M_wind_box,'String',M_wind)
set (handles.i2_box,'String',i2)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
    sr = str2num(get(handles.sr_box,'String'));
    
wt = str2num(get(handles.wt_box,'String'));
ws = sr*wt;
 
L = 5*ws+6*wt;
tau = L/P;
v = 2*L*f/P;
V = [V,v];

s = .10;
m = 3;


gm = str2num(get(handles.gm_box,'String'));%levitation in mm
gm = gm/1000;% mm to m


d = str2num(get(handles.d_box,'String'));% al subtrack thickness in mm
d = d/1000;% mm to m

go = gm+d;


Wse = ws+go;
lambda = ws+wt;
q1 = tau/(m*lambda);
alpha = pi*((m*q1).^-1);
kd = (sin(q1.*alpha/2)).*(q1.*sin(alpha/2)).^-1;



wa = .9*ws/2;

I = str2num(get(handles.I_box,'String'));
dm = str2num(get(handles.dm_box,'String'));% dia of coil
dm = dm/1000;

h = str2num(get(handles.h_box,'String'));
h = h/1000;

effT = str2num(get(handles.effT_box,'String'));
N1 = 2*(h/dm)*(wa/dm)*effT;% No of turnsper phase

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
G2 = (2*mu0*f*tau^2/(pi*(rhor2/d))).*(ge.^-1);

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

acc = 2*(Ft)/380;
%acc = (Ftact)/20;
velocity_max = sqrt(2*acc*480);
vmaref = 36*velocity_max;
V_max= [V_max,velocity_max];
end
plot(f,F)
grid on
