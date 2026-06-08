clc;clear;
f=@(x)sin(x);
a=0;
b=pi;
m=5;
R=zeros(m,m);
for k=1:m
    n=2^(k-1);
    h=(b-a)/n ;
    s=0;
    for i=1:n-1
        s=s+f(a+h*i);
    end
        R(k,1)=(h/2.0)*(f(a)+2*s+f(b));
end
%Romberg Integration
for j=2:m
    for i=j:m
        R(i,j)=R(i,j-1)+(R(i,j-1)-R(i-1,j-1))/(4^(j-1)-1);
    end
end
disp("Romberg Integration")
disp("_______________________")
for i=1:m
fprintf("%2d",i);
for j=1:i
    fprintf(" %12f",R(i,j))
end 
fprintf("\n");
end
fprintf("\n R(5,5)=%12f",R(5,5))