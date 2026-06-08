clc;clear;
h=[0,3,6,9,12,15,18,21,24,27,30,33];
D=[1.2,0.91,0.66,0.47,0.31,0.19,0.12,0.075,0.046,0.029,0.018,0.011];
%(i) linear scale
subplot(2,2,1);
plot(h,D,'r-o')
grid on
xlabel("h(km)")
ylabel("D(kg/m^3")
title('Linear h,linear D')

%(ii)Semilog
subplot(2,2,2);
semilogx(h,D,'bs-')
grid on
title('Log h,linear D')
xlabel('Log(h)')
ylabel('Linear D')

%(iii)
subplot(2,2,3);
semilogy(h,D,'bs-')
grid on
title('Linear h,log D')
xlabel('(h)')
ylabel('log(D)')

%(iv)
subplot(2,2,4);
loglog(h,D,'r-o')
grid on
title('Log h vs log D')
xlabel('log(h)')
ylabel('log(D)')

%Chose best fit for exponential D=a*exp(b*h)
x=h;
y=log10(D);
p=polyfit(x,y,1);
b=p(1)
a=log10(p(2))

