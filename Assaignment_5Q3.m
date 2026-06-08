clc;clear;
% z=5*x+6*y
% 4*x+7*y>=90 & 5*x+4*y>=120
[x y]=meshgrid(0:0.1:50,0:0.1:50);
cond=(4*x+7*y>=90) & (5*x+4*y>=120);
contourf(x,y,cond,[0.5 0.5]);%for Shaded Region
hold on;
fimplicit(@(x,y)4*x+7*y-90,[0 30 0 35],'b',"linewidth",2);
fimplicit(@(x,y)5*x+4*y-120,[0 30 0 35],'r',"linewidth",2);
plot([24 0],[0,30],'ko')%For corner point
grid on
xlabel("X")
ylabel("Y")

legend("Feasible Region ","Line 1","Line 2")
points=[24 0;0 30];
Z=5*points(:,1)+6*points(:,2);
table(points(:,1),points(:,2),Z,'VariableNames',{'x','y','Z_value'})
disp("The minimum Cost is Z=120 at (24,0) ")