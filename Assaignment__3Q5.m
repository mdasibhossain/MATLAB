clc;clear all;
%given that
a=5;
b=4;
T1=80;
N=100;
[X,Y]=meshgrid(linspace(0,a,100),linspace(0,b,100));
T=zeros(size(X));
for n=1:N
lamda=((2*n-1)*pi)/a;
term=(sin(lamda*X)+sinh(lamda*Y))/((2*n-1)*sinh(lamda*b));
T=T+term;
end
T=(4*T1/pi)*T;
surf(X,Y,T)
xlabel("x(m)");
ylabel("y(m)");
zlabel("Temperature (C)")
colorbar
shading interp


