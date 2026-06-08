clc;clear;
a1=9;a2=9;a3=0;
m1=10;m2=11;m3=13;
disp("Check solvability")
if gcd(m1,m2)==1 && gcd(m1,m3)==1 && gcd(m2,m3)==1
    disp("The linear congruence system has solution")
else
    disp("The linear congruence system has not solution")

end
M=m1*m2*m3;
M1=M/m1;M2=M/m2;M3=M/m3;

         % x_mod বের করার সঠিক লজিক
for k1 = 1:m1
    if mod(M1 * k1, m1) == 1 
         x_mod = k1;
         fprintf("\n x_mod=%d", x_mod)
         break;    
    end
end

% y_mod বের করার সঠিক লজিক
for k2 = 1:m2
    if mod(M2 * k2, m2) == 1 
         y_mod = k2;
         fprintf("\n y_mod=%d", y_mod)
         break;
    end
end

% z_mod বের করার সঠিক লজিক
for k3 = 1:m3
    if mod(M3 * k3, m3) == 1 
         z_mod = k3;
         fprintf("\n z_mod=%d", z_mod)
         break;
    end
end

% চূড়ান্ত সমাধান (X = a1*M1*x + a2*M2*y + a3*M3*z)
X = mod(a1*M1*x_mod + a2*M2*y_mod + a3*M3*z_mod, M);

fprintf("\n\n Final Solution X = %d \n", X);

     
             





    

