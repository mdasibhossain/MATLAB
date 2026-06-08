clc;clear;
T = [2, 4, 6, 8, 10, 20, 40, 60, 80, 100, 150, 250, 350, 500, 1000, 1400];
K = [46, 300, 820, 1560, 2300, 5000, 3500, 2100, 1350, 900, 400, 190, 120, 75, 30, 20];
x=log10(T);
y=log10(K);
n=length(x);
%Third order polynomial fitting
sx=sum(x);
sx2=sum(x.^2);
sx3=sum(x.^3);
sx4=sum(x.^4);
sx5=sum(x.^5);
sx6=sum(x.^6);
sy=sum(y);
sxy=sum(x.*y);
sx2y=sum((x.^2).*y);
sx3y=sum((x.^3).*y);

A=[ n sx sx2 sx3;
    sx sx2 sx3 sx4;
    sx2 sx3 sx4 sx5;
    sx3 sx4  sx5 sx6];
B=[sy sxy sx2y sx3y]';
coeff=A\B;
d=coeff(1);
c=coeff(2);
b=coeff(3);
a=coeff(4);
%plot data and fitted Curve
T_fit=linspace(min(T),max(T),200);
x_fit=log10(T_fit);
y_fit=d+c*x_fit+b*(x_fit).^2+a*(x_fit).^3;
K_fit=10.^(y_fit);
loglog(T,K,'ro','LineWidth',1.5)
hold on;
loglog(T_fit,K_fit,'b-','LineWidth',1.5)
grid on;
xlabel('Temperature T (K)');
ylabel('Thermal Conductivity k (W/m-K)');
title('Third Order Polynomial Curve Fitting (Log-Log)');
legend('Data Points', 'Fitted Curve');
