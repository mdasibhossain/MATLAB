clc;clear all;

clc;clear all;
%Given that
syms v(x) m k v0_sym
%Differntial Equation 
% dv/dx=(-k/m)*v.^2.*v.^3*(x+1).^3
ode_eqn=diff(v,x)==(-k/m)*v^2*(x+1)^3;
cond=v(0)==v0_sym;
v_sol(x)=dsolve(ode_eqn,cond)

%For Numerical Calculation
k=30.0;
m=1500;
v0=90*(1000/3600);
ode_fun=@(x,v)(-k/m)*(v.^2)*(x+1).^3;

x_span=[0 3];
[x v]=ode45(ode_fun,x_span,v0);
%Ploting Velocity Vs Position
plot(x,v,'r-','Linewidth',2.5)
grid on
xlabel("x(m)")
ylabel("v(m/s)")
