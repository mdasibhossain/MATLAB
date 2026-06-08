clc;clear all;
u_total=0;
for n=1:2:10
    L=pi;
    c=40/(n*pi);
     x=L/2;
     t = linspace(0, 4, 200);
     a=1.71;
    u=c*sin(n*x*pi/L).*exp(-(a.^2*n.^2.*pi.^2.*t)/(L.^2));
    u_total=u_total+u;
  
end 
 plot(t,u_total)
    xlabel("t");
    ylabel("Temperature u(x,t)");

    %f
    % When t=>Infinty u(x,t)=0