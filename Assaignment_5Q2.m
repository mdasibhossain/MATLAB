clc;clear;
% objective function
% max z=x+y
%Constraint
%200*x+100*y<=5000 Line-1
%25*x+50*y<=1000 Line-2



[x y]=meshgrid(0:0.5:50,0:0.5:50);
cond = (200*x + 100*y <= 5000) & (25*x + 50*y <= 1000);
figure;
contourf(x, y, cond, [.50 .50], 'LineColor', 'none');
hold on
fimplicit(@(x,y)200*x+100*y-5000,[0 50 0 50])
fimplicit(@(x,y)25*x+50*y-1000,[0 50 0 50])
plot([0 25 20 0],[0 0 10 20],'bo')
grid on
xlabel("X")
ylabel("Y")
legend('Feasible Region','Line 1', 'Line 2', 'Corner Points');

A=[200 100;25 50];
B=[5000;1000];
%Line_1
x_int1=5000/200;%y=0
y_int1=5000/100;%x=0
%Line-2
x_int2=1000/25;%y=0
y_int2=1000/50;%x=0
intersect=(A\B)';
%Find the value of Z
points=[0 0 ;x_int1 0, ;intersect;0 y_int2];
z=points(:,1)+points(:,2);%x+y
table(points(:,1),points(:,2),z,'VariableNames',{'x','y','Z_value'})
disp("The minimum Cost is Z=30 at (20,10) ")




