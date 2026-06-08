clear;clc;
ISBN_12=input("Enter 12 digit ISBN NUmber:","s");
sum=0;
for i=1:12
    digit=str2double(ISBN_12(i));
    if mod(i,2)==1
        sum=sum+digit;
    else
        sum=sum+3*digit;
    end
end
r=mod(sum,10);
if r==0
    fprintf("The check digit is %d",r);
else
    check=mod(10-r,10)
    fprintf("\nThe check digit is %d\n",check);
end














   