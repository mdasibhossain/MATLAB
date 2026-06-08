clear;clc;
a = input('Enter the value of a:');
b = input('Enter the value of b:');
m = input('Enter the value of m:');

 % compute gcd
d=gcd(a,m); 

if mod(b,d)~=0;
    fprintf(' No solution Exists\n')
else
   fprintf('  Solution exists\n')
   fprintf('Incongruent solution modulo %d are\n',d)
 
%Reduce the Equation
a1=a/d;
b1=b/d;
m1=m/d;
%Extended Eucledian 
[g,x,~]=gcd(a1,m1);
%Modular inverse of a1 mod m1
inv_a1=mod(x,m1);
%one solution
x0=mod(inv_a1*b1,m1);
%Display the solution
for k=0:d-1
    sol=mod(x0+k*m1,m);
    fprintf('x=%d\n',sol);
end
end



