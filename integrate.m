function [Integral,error,ratio] = integrate(f,a,b)
    N = [];
    A = [];
    error=[];
    ratio = [];
    Original = integral(f,a,b);
    
       n = 2;
       while n<=100
        x = linspace(a,b,n+1);
        y = f(x);
        h = (b-a)/n;
        I = (h/2)*(y(1)+2*sum(y(2:n))+y(n+1));
        N(end+1) = n;
        A(end+1) = I;
        error(end+1) = abs(Original-I);
        n = 2*n;
    end
    for k = 2:length(error)
        ratio(end+1) = error(k-1)/error(k);
    end
    Integral = A(end);
end
