clc;clear;
%Given that;
m=1500;
v0=25;
k=30;
xspan=[0 3];
%Define ODE
f=@(x,v)(-k/m)*v.^2*(x+1).^3;
%SolVe ODE
[x_num,v_num]=ode23(f,xspan,v0);

syms v(x)  % declare symbolic function
% Directly write symbolic ODE
ode_sym = diff(v,x)== -(k/m)*v^2*(x+1)^3; 
% Initial condition
cond = v(0) == v0;

v_exact = dsolve(ode_sym, cond);
v_exact = simplify(v_exact);
disp((v_exact))
plot(x_num,v_num,'b');
grid on;
xlabel("Position x(m)");
ylabel("Velocity v(m/s)");