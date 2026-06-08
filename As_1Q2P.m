clc; clear; 

tol = 1e-4;
x0 = 1.5;
maxIter = 100;

% All iteration functions
g{1} = @(x) x - x.^3 - 4*x.^2 + 10;
g{2} = @(x) sqrt( (10./x) - 4*x );
g{3} = @(x) 0.5*sqrt(10 - x.^2);
g{4} = @(x) sqrt(10./(4 + x));
g{5} = @(x) x - (x.^3 + 4*x.^2 - 10) ./ (3*x.^2 + 8*x);


for k = 1:5
    fprintf("\n===== g_%d(x) ITERATION =====\n", k);

    x_old = x0;

    for n = 1:maxIter
        x_new = g{k}(x_old);


        fprintf("Iter %d: x = %.6f\n", n, x_new);

        if abs(x_new - x_old) < tol
            fprintf("Converged to root: %.6f after %d iterations.\n", x_new, n);
            break;
        end

        x_old = x_new;
    end

    if n == maxIter
        fprintf("Did NOT converge within max iterations.\n");
    end
end
