tol=10^-5;
x1=1;x2=1;x3=1;
max_ietr=100;
disp("iter   x1     x2      x3 ")
disp("____________________________")
for i=1:max_ietr 
    x1_new=(24-3*x2)/4.0;
    x2_new=(30-3*x1+x3)/4.0;
    x3_new=(-24+x2)/4.0;
    error=max(abs(x1_new-x1),max(abs(x2_new-x2),abs(x3_new-x3)));
    fprintf("\n %3d %6f %6f %6f",i,x1_new,x2_new,x3_new)
    if error<tol
      fprintf("\n %3d Converged ")
      break;
    end
    x1=x1_new;
    x2=x2_new;
    x3=x3_new;


end 
fprintf("The solution of the system\n")
fprintf("x1= %6f \n",x1_new)
fprintf("x2= %6f \n",x2_new)
fprintf("x3= %6f \n",x3_new)
