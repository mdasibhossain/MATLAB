
a1=9;a2=9;a3=0;
m1=10;m2=11;m3=13;
if gcd(m1,m2)==1 && gcd(m2,m3)==1 && gcd(m1,m3)==1
    disp("The system has Solution")
else
    disp("The system has Solution")
end
M=m1*m2*m3;
M1=M/m1;M2=M/m2;M3=M/m3;
for k=0:1000
    if mod(1+m1*k,M1)==0
        x1=(1+m1*k)/M1;
        x_mod=mod(x1,m1);
        fprintf("\n x1=%d ",x_mod)
        break;
    end
end
M1=M/m1;M2=M/m2;M3=M/m3;
for k=0:1000
    if mod(1+m2*k,M2)==0
        y1=(1+m2*k)/M2;
        y_mod=mod(y1,m2);
        fprintf("\n y1=%d ",y_mod)
        break;
    end
end
for k=0:1000
    if mod(1+m3*k,M3)==0
        z1=(1+m3*k)/M3;
        z_mod=mod(z1,m3);
        fprintf("\n z1=%d ",z_mod)
        break;
    end
end
x=mod((a1*M1*x1+a2*M2*y1+a3*M3*z1),M);
fprintf("\n x=%d(mod %d)",x,M)
     
             





    

