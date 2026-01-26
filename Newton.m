f = @(x) x^6-x-1;
df = @(x) 6*x^5-1;
a = input('Enter the value of a: ');
b = input('Enter the value of b: ');
for i = 1:8
    p = (a+b)/2;
    if f(a)*f(p) <0
        b=p;
    else
        a=p;
    end
end
x=0;
x(1)=p;
fprintf('The value of x1: %f',x(1));
for i=2:100
    x(i) = x(i-1) - f(x(i-1))/df(x(i-1));
    if df(x(i-1))==0
        disp('Derivative is zero.Newton method fails');
        return
    end
   
    if abs(x(i)-x(i-1))<1.0E-6
        fprintf('Root is: %f\n',x(i));
        fprintf('No of iterations: %d\n',i);
        break;
    end
end
x'

   

   
