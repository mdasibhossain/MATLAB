clc;clear all;
tol=10^-4;
x0=1.5;
maxIter=100;
g{1} = @(x)( x - x.^3 - 4*x.^2 + 10);
g{2}=@(x)(sqrt(10/x -4*x));
g{3} = @(x) 0.5*sqrt(10 - x.^2);
g{4} = @(x) sqrt(10./(4 + x));
g{5} = @(x) x - (x.^3 + 4*x.^2 - 10) ./ (3*x.^2 + 8*x);

for k=1:5
    fprintf("\n===== g_%d(x) ITERATION =====\n", k);
    disp("Iteration    x_new   ")
   disp("__________________________-")
    x_old=x0;
    for n=1:maxIter
        x_new=g{k}(x_old);
        fprintf("\n %3d %6f ",n,x_new)
        if abs(x_new-x_old)<tol
            disp("The function is converged");
            break;
        end
        x_old=x_new;
    end
    if n==maxIter 
        fprintf("Did not conveged ")
    end
    fprintf("\n root= %6f ",x_new)
end






