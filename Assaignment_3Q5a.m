clc;clear all;
materials={'Silver','Coper','Aluminium','Cast Iron'};
t=1;
U=0;
a_vals=[1.71,1.14,0.86,0.12];
 x_val=0:0.5:10;

for m=1:4
    a=a_vals(m);
    fprintf('\n For %s U(X,T)\n', materials{m});
    disp("_____________________")
    U = zeros(size(x_val));
   i=1;
for x=x_val
     u_steady=10+2*x;
     u_transient=0;

for n=1:100
    
    term = ( (3*(-1).^n - 1) / n) * sin(n * pi * x/ 10) * exp(-a * n.^2 * pi.^2 * t / 100);
    u_transient=u_transient+term;

end 
U(i)=u_steady+(20/pi)*u_transient;
i=i+1;

end
disp([x_val', U'])
end

