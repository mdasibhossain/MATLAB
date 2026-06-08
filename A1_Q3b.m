clc;
x=[1.8 1.9  2.0 2.1 2.2];
y=[10.889365 12.703199 14.778112 17.148957 19.855030];

x_p=1.95;
p=0;
for i=1:length(x)
    L=1;
    for j=1:length(x)
        if j~=i
            L=L*(x_p-x(j))/(x(i)-x(j));
        end 
    end
        p=p+y(i)*L;

end
fprintf("Interpolated Value== %6f",p)



