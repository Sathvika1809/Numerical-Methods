function[root,iterations]=Secant(f,x0,x1,tol,maxIter)
for i = 1:maxIter
    x2 = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0));
    if abs(x2-x1)<1.0E-6;
        root = x2;
        iterations = i;
        return
    end
    x0=x1;
    x1=x2;
end
fprintf('The root is %d\n',x2);
warning('Max Iterations reached');
end
