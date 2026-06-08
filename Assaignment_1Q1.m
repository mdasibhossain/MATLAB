f=@(x)(x-cos(x));
a=0;
b=1;
tol=10^-5;
max_iter=100;
if f(a)*f(b)<0
    disp("The function hve solution");
else
    disp("The function have not solution");
end
disp(" Iteraion     a     b     p    Error  ")
for i=1:max_iter
    p=(a+b)/2.0;
    error=abs(b-a);
     fprintf("\n %3d %6f %6f %6f %6f\n",i,a,b,p,error)
    if error<tol
      break;
      
    end

      if f(a)*f(p)<0
          b=p;
      else
          a=p;
      end 
end
fprintf(" roots= %3f",p)