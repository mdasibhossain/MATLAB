clc; clear;
%(Question a)
syms x t a n L c pi
u = c * sin(n*pi*x/L) * exp(-(a^2 * n^2 * pi^2 * t) / L^2);

ut = diff(u, t);     
uxx = diff(u, x, 2);   

result = simplify(ut - a^2 * uxx);
disp(result);        

fprintf("\n Question (b) \n ")

f_x=10;
integrand=f_x*sin(n*pi*x/L);
c_n=(2/L)*int(integrand,0,L)
pretty(simplify(c_n))
