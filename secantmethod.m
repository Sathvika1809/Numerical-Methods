format long
f=@(x) x^6-x-1;
tol = 1.0e-07;
x=0.0;
x(1)=1.0;x(2)=1.5;%Initial values close to our root
for i=3:100
    val = (x(i-1)-x(i-2))/(f(x(i-1))-f(x(i-2)));
    x(i) = x(i-1)-f(x(i-1))*val;
    iter = i;
    if abs(x(i)-x(i-1))<tol
        break;
    end
end
x'
root = x(i);
fprintf('Root is found %f,iterations: %d',root,iter);



