clc;clear;
a=input("Enter the value of a=");
b=input("Enter the value of b=");
m=input("Enter the value of m=");
d=gcd(a,m);
fprintf("\n gcd=%d\n",d);
if mod(b,d)~=0
    disp(" The linear congruence has not solution");
else
     disp(" The linear congruence has  solution");
     fprintf("\n The number of incongrunet solution is %d ",d);
     
       a1=a/d;
       b1=b/d;
       m1=m/d;
       count=0;
       for k=0:10000
           if count==d           % d পর্যন্ত চেক করার জন্য
               break;
           end
           if mod(b1+m1*k,a1)==0
               x=(b1+m1*k)/a1;
               x_mod=mod(x,m);
               fprintf("\n x =%d (mod %d)",x_mod,m);
               count=count+1;
           end


       end
end

