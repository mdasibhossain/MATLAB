clc;clear;
A=[3 6 2;5 2 1;0 4 6]
B=[2 0 2]'



d=round(det(A));
inv_A=inv(A);
adj_A=round(inv_A*d);

b=1;
m=7;
% modular Inverse of determinant
for k=0:1000
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
