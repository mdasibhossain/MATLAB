clear;clc;
a=576;
b=391;
cf=[];
while b~=0
    q=floor(a/b);
    cf=[cf q];
    r=mod(a,b);
    a=b;
    b=r;
end
disp("The Continued fraction")
disp(cf)
n=[cf];
for i=1:length(n)
    
