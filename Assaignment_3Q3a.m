clc;clear all

syms n x a L cn t pi
u=cn*sin(n*x*pi/L)*exp(-(a^2*n^2*pi^2*t)/(L^2));
ut=diff(u,t);
uxx=diff(u,x,2);
simplify(ut-a^2*uxx)
