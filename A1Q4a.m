clc;clear all;

f = @(x) sin(x);
a=0;
b=pi;
N=[1 2 4 8 16];
disp(" n        Approximation")
disp("___________________________")
for n=N
h=(b-a)/n;
x=a:h:b;
I = (h/2)*(f(x(1))+2*sum(f(x(2:end-1)))+f(x(end)));
fprintf("\n %3d %12f ", n, I);
end

