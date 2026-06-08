h=[0 3 6 9 12 15 18 21 24 27 30 33];
D=[1.2 0.91 0.66 0.47 0.31 0.19 0.12 0.075 0.046 0.029 0.018 0.011];
%CHose exponential function D=b*e^a*h
p=polyfit(h,log(D),1);
b=p(1)
a=exp(p(2))
h_fit=linspace(min(h),max(h));
D_fit=a*exp(b*h_fit)
plot(h,D,'r-o')
hold on
plot(h_fit,D_fit,'b')





