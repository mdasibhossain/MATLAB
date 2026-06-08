clc;clear all;
u_total=0;
for n=1:2:10
    L=pi;
    c=40/(n*pi);
     x = linspace(0, L, 200);
     a=1.71;
     t=0.2;
    u=c*sin(n*x*pi/L).*exp(-(a.^2*n.^2.*pi.^2.*t)/(L.^2));
    u_total=u_total+u;
  
end 
 plot(x,u_total)
    xlabel("X");
    ylabel("Temperature u(x,t)");
    