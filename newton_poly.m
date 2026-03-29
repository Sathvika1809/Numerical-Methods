function[root,iterations]=newton_poly(p,x0,tol,maxIter)
%Finds a root of polynomial using Newton Raphson Method
%p: Coefficient vector of polynomial
%x0: Initial guess for the root
%tol: tolerance for convergence
%maxIter = Max no of Iterations
pd = polyder(p);
x_old = x0;
iterations =0;
for i=1:maxIter
    f_x=polyval(p,x_old);
    f_prime_x = polyval(pd,x_old);
    if abs(f_prime_x)<1e-10
        warning('Derivative is close to zero.Method may fail');
        break;
    end
    x_new = x_old - (f_x/f_prime_x);
    if abs(x_new-x_old)<tol
        root = x_new;
        iterations = i;
        return;
    end
    x_old = x_new;
    iterations = i;
end
root = x_new;
warning('Maximum Iterations reached without convergence');

