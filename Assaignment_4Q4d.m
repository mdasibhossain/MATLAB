clc;clear all;
%NL=x,NG=y;
%Multi-step predictor-coreecrtor 3rd order
h=0.1;
t_start=0;
t_end=25;
t=t_start:h:t_end;
N=length(t);
x=zeros(1,N);
y=zeros(1,N);
x(1)=3000;
y(1)=500;
f=@(t,x,y)(0.00025*x*y-0.7*x);
g=@(t,x,y)(1.1*y-0.0005*x*y);
for i=1:2;
    k1=f(t(i),x(i),y(i));
    m1=g(t(i),x(i),y(i));

    k2=f(t(i)+h/2,x(i)+(h/2)*k1,y(i)+(h/2)*m1);
    m2=g(t(i)+h/2,x(i)+(h/2)*k1,y(i)+(h/2)*m1);

    k3=f(t(i)+h/2,x(i)+(h/2)*k2,y(i)+(h/2)*m2);
    m3=g(t(i)+h/2,x(i)+(h/2)*k2,y(i)+(h/2)*m2);

    k4=f(t(i)+h,x(i)+h*k3,y(i)+h*m3);
    m4=g(t(i)+h,x(i)+h*k3,y(i)+h*m3);

    x(i+1)=x(i)+(h/6)*(k1+2*k2+2*k3+k4);
    y(i+1)=y(i)+(h/6)*(m1+2*m2+2*m3+m4);
end

for i=3:N-1
    %Previous 3 point
    f_n=f(t(i),x(i),y(i));
    f_n1=f(t(i-1),x(i-1),y(i-1));
    f_n2=f(t(i-2),x(i-2),y(i-2));

     g_n=g(t(i),x(i),y(i));
    g_n1=g(t(i-1),x(i-1),y(i-1));
    g_n2=g(t(i-2),x(i-2),y(i-2));

    %Predictor(adams Bashforth 3rd order)
    xp=x(i)+(h/12)*(23*f_n-16*f_n1+5*f_n2);
    yp=y(i)+(h/12)*(23*g_n-16*g_n1+5*g_n2);

    f_pred=f(t(i+1),xp,yp);
    g_pred=g(t(i+1),xp,yp);
     
    %corrector(adams moulton 3rd order)
    x(i+1)=x(i)+(h/12)*(5*f_pred+8*f_n-f_n1);
    y(i+1)=y(i)+(h/12)*(5*g_pred+8*g_n-g_n1);

end
fprintf("\n  EULER METHOD  \n")
disp("______________________________")
fprintf("Time(t)               X(t)         Y(t)");
fprintf('\n-----------------------------------------\n');
for i=1:N
    fprintf("%-10.1f %15.2f %15.2f\n",t(i),x(i),y(i));
end
plot(t, y, 'g-', 'LineWidth', 2);
hold on
plot(t, x, 'r-', 'LineWidth', 2);           
grid on;