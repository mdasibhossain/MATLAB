clc;clear all;
materials={'Silver','Coper','Aluminium','Cast Iron'};
a_vals=[1.71,1.14,0.86,0.12];
t_val=[10,20];
x_val=0:0.5:10;
for j=1:2
    t=t_val(j);
    fprintf("\n for t=%d",t);
    disp("___________________")

for m=1:4
    a=a_vals(m);
    fprintf('\n For %s U(x,t)\n',materials{m});
    disp("___________________________________")
U=zeros(size(x_val));
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
disp([x_val',U'])
end
j=j+1;
end