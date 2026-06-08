clc;clear all;
%Given that
v0=250; %Initail Velocity
theta=65;
g=9.8;
x0=3000;
v_wind=-30;
% Calculate time of flight
t_flight=(2*v0*sin(theta))/g;

%Time Vector
t=linspace(0,t_flight,200);
%Equation of Motion_NO Wind
x_nowind=x0*ones(size(t));
y_nowind=v0*cosd(theta)*t;
z_nowind=v0*sind(theta)*t-0.5*g*t.^2;

%Equation of Motion With Wind
x_wind=x0+v_wind*t;
y_wind=v0*cosd(theta)*t;
z_wind=v0*sind(theta)*t-0.5*g*t.^2;
figure;
plot3(x_nowind,y_nowind,z_nowind,'LineWidth',2)
hold on
plot3(x_wind,y_wind,z_wind,'r--')
grid on
xlabel("X")
ylabel("Y")
zlabel("Z")
legend('Trajectory (No Wind)', 'Trajectory (With Wind)', 'Location', 'best');



