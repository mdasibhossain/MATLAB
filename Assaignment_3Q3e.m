clc;clear all;
a=5;
b=4;
T1=80;
T=0;
[X Y]=meshgrid(linspace(0,a,200),linspace(0,b,200));
for n=1:100
    C=(2*n-1)*(a/pi);
    term=(sin(C*X)+sinh(C*Y))/((2*n-1)*sinh(C*b));
    T=T+term;
end
T=(4*T1/pi)*T;
surf(X,Y,T)
xlabel("X")
ylabel("Y");
zlabel("T(x,y)")
colorbar
shading interp