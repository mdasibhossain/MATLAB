clc;clear;
A=[2 3 1 5 4 6 7;
    1 2 3 1 5 4 6;
    6 1 2 3 1 5 4;
    4 6 1 2 3 1 5;
    5 4 6 1 2 3 1;
    3 5 4 6 1 2 3;
    1 3 5 4 6 1 2];
B=[3 5 7 2 6 1 4]';
d=round(det(A));
inv_A=inv(A);
adj_A=round(inv_A*d);

b=1;
m=11;
% modular Inverse of determinant
for k=0:100000
    if mod(b+m*k,d)==0
        x=(b+m*k)/d;
        d_inv=mod(x,m);
        fprintf("\n modular inverse of determinant= %d\n",d_inv)

        break;
    end 
end
%Inverse modulo of A
A_inv=mod(adj_A*d_inv,m);
fprintf("Thus the Solution")
X=mod(A_inv*B,m)