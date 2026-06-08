clc;clear;

a=23621;
b=16376;
c=23;
%Eucledian Algorithom
r1=a;
r2=b;
%Coefficient of a & b
s1=1;s2=0;
t1=0;t2=1;
while r2~=0
q=floor(r1/r2);
r=r1-q*r2;
s=s1-q*s2;
t=t1-q*t2;
fprintf('r1=%d,q=%d,r2=%d,remainder r=%d\n',r1,q,r2,r);
%updated Value
r1=r2;
r2=r;
s1=s2;
s2=s;
t1=t2;
t2=t;
end

%Result
d=r1;
x0=s1;
y0=t1;
fprintf('\n GCD=%d\n',d);
fprintf('Linear COmbination: %d*a+%d*b=%d\n',x0,y0,d)
%Built in function
[g,u,v]=gcd(23621,16376);
fprintf('\n GCD=%d\n',g);
fprintf('Check: %d*a + %d*b = %d\n', u,  v, g);




