clc;clear;

subplot(2,2,1)
[x y]=meshgrid(-1.5:0.05:1.5);
f=(x.^2+y.^2);
contourf(x,y,f<=1,[0.5 0.5])
hold on
plot([-0.5 0.6],[0.5 0.3],'r-o')
grid on
xlabel("X")
ylabel("Y")
title(" plot x^2+y^2<=1 is convex")

subplot(2,2,2)
[X Y]=meshgrid(-2:0.1:2,-2:0.1:2);
Z= (2 - 2*X + Y) / 3;
surf(X,Y,Z);
grid on

subplot(2,2,3)
[u v]=meshgrid(0:0.05:4,0:0.05:4);
contourf(u,v,u.*v>=1,[0.5 0.5])
hold on
plot([0.5 2],[2 0.5],'r-o')
grid on
xlabel("X")
ylabel("Y")
title(" xy>=1 is not a convex")

subplot(2,2,4)
[x y]=meshgrid(-5:0.05:5,-5:0.05:5);
contourf(x,y,y<=x.^2,[0.5 0.5])
hold on
plot([1 2],[1 4],'r-o')
grid on
xlabel("X")
ylabel("Y")
title(" y=x^2 is not a convex")