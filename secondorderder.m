function [rate,ans1] = secondorderder(f,ddf,x0)
    
    hvals = [1 0.5 0.25 0.125 0.0625 0.03125];
    n = length(hvals);
    ans1 = zeros(1,n);
    err = zeros(1,n);
    rate = zeros(1,n);
    for i = 1:n
        h = hvals(i);
        ans1(i) = (f(x0+h)-2*f(x0)+f(x0-h))/(h*h);
        err(i) = abs(ddf(x0)-ans1(i));
       
    end
    for k = 2:length(err)
        rate(k) = err(k-1) / err(k); % Calculate the rate of error for each point
    end
end
