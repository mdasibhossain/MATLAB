clc;clear;
A=[3 6 2;5 2 1;0 4 6];
B=[2 0 2]';
d=round(det(A));
inverse_A=inv(A);
adj_A=round(inverse_A*d);
b=1;
m=7;
%modular Inverse
for k=0:1000
if mod(b+m*k,d)==0
    x=(b+m*k)/d;
    x_mod=mod(x,m);
    fprintf("\n Thus the modular Inverse %d\n",x_mod)
    break;
end
end
%Inverse of modulo A
A_inv=mod(adj_A*x_mod,m);
X=mod(A_inv*B,m)
