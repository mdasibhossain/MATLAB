clc;
f=@(x)(x*exp(x));
x=[1.8 1.9  2.0 2.1 2.2];
y=[10.889365 12.703199 14.778112 17.148957 19.855030];
h=0.1;
x0=2.0
%3-point midpoint formul
P1=(f(x0+h)-f(x0-h))/2*h
fprintf("three_point_midpoint value  p1== %6f",P1)

%5-point midpoint value
p2=(1/12*h)*((x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h));
fprintf("\n Five_point_midpoint value p2== %6f",p2)
