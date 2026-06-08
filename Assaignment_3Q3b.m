clc;clear all;
syms x n L
f=10;
c=(2/L)*int(f*sin(n*pi*x/L),x,0,L);
pretty(simplify(c))

figure;
hold on
for n=1:2:10
    L=pi;
    c=40/(n*pi);
    fprintf("\n n=%d,Cn=%f",n,c)
      
     x = linspace(0, L, 200);
     a=1.71;
     t=0.2;
    u=c*sin(n*x*pi/L).*exp(-(a.^2*n.^2.*pi.^2.*t)/(L.^2));
    plot(x,u)
    xlabel("X");
    ylabel("Y");
  

end 

