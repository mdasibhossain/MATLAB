clc;clear all;
%NL=x,NG=y;
h=0.1;
t_start=0;
t_end=25;
t=t_start:h:t_end;
N=length(t);
x=zeros(1,N);
y=zeros(1,N);
x(1)=3000;
y(1)=500;
f=@(t,x,y)(0.00025*x*y-0.7*x);
g=@(t,x,y)(1.1*x-0.0005*x*y);
for i=1:(N-1)
    x(i+1)=x(i)+h*f(t(i),x(i),y(i));
    y(i+1)=y(i)+h*g(t(i),x(i),y(i));
end

fprintf("\n  EULER METHOD  \n")
disp("______________________________")
fprintf("Time(t)               X(t)         Y(t)");
fprintf('\n-----------------------------------------\n');
for i=1:N
    fprintf("%-10.1f %15.2f %15.2f\n",t(i),x(i),y(i));
end