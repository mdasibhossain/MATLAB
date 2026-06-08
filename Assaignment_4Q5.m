%Given that
g=9.8;L=10;
w=7.29e-5;
la=39.9611*pi/180;
p=2*w*sin(la);
f=@(t,x)[x(2);
    p*x(4)-(g/L)*x(1);
    x(4);
    p*x(2)-(g/L)*x(3)];
tspan=[0 20000];
X0=[1 0 0 0];%Initial condition
[t X]=ode45(f,tspan,X0);
plot(X(:,1),X(:,3))
xlabel("X")
ylabel("Y")
title("Foucault Pendulum Path")
grid on

