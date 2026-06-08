clc;clear;
%Given that
v0=250;  %Initial Velocity
theta=deg2rad(65);   %launch angle
g=9.8;
v_wind=-30;

%Initial Position
x0=3000;
y0=0;
z0=0;
%Velocity component (no wind)
vy0=v0*cos(theta);
vz0=v0*sin(theta);
vx0=0;

% Time of flight
T=(2*vz0)/g;
%Time vector
t=linspace(0,T,500);
% Without wind
x1=x0+vx0*t;
y1=y0+vy0*t;
z1=z0+vz0*t-0.5*g*t.^2;
%With wind
x2=x0+(vx0+v_wind)*t;
y2=y0+vy0*t;
z2=z0+vz0*t-0.5*g*t.^2;

plot3(x1,y1,z1,'b'); hold on;
plot3(x2,y2,z2,'r');
grid on;
xlabel('X(East-West)');
ylabel('Y(North)');
zlabel('Z(Height)');
legend('No Wind','With Wind')


