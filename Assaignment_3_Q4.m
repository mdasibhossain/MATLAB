clc;clear all;
syms x y s x0
%charcteristice equation
x_char=s+x0;
y_char=(s+1)^3;
u_char=2*s+1+x0;
%solve for s in term of y
s_sol=(y^1/3)-1;
x_sol=x-s_sol;
u_sol=subs(u_char,s,s_sol);
u=subs(u_sol,x0,x_sol);
%Surface plot

[X,Y]=meshgrid(linspace(-20,20,500),linspace(10,30,500));
U=X+Y^1/3;
surf(U,X,Y)
shading interp
colormap turbo
alpha(0.7)

xlabel('x'); ylabel('y'); zlabel('u(x,y)')
hold on
%characteristic curve
[X0,S]=meshgrid(linspace(-2,2,5),linspace(0,50));
X_char = X0 + S;            % x = x0 + s
Y_char = (1 + S).^3;        % y = (1+s)^3
U_char = X_char + Y_char.^(1/3);

plot3(X_char, Y_char, U_char)



