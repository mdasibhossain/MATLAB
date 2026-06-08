clc;clear;
%Given that
R=8.31;
M=0.028;%(Suppose Nitrogen Gas)
v=linspace(0,3000,500);
T=[200 300 500 800];
vp_all=zeros(size(T));
figure
hold on
for i=1:length(T)
     P = 4*pi*(M/(2*pi*R*T(i)))^(1.5) .* v.^2 .* exp(-M*v.^2/(2*R*T(i)));
     plot(v,P,'LineWidth',2)
     vp=sqrt(2*R*T(i)/M);
     plot(vp,max(P),'o','MarkerSize',8)
     vp_all(i)=vp;

end
grid on
xlabel("v(m/s")
ylabel('P(v)')
title("MAxwell speed Distribution")
legend('200k','300k','500k','800k')

%Trend line
figure
plot(T,vp_all,'o-','LineWidth',2)
xlabel("Temperature(T)")
ylabel("Most prabable Speed")
grid on



