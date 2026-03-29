format long
a(1)=1.0;
tol = 1.0e-07;
g1=@(x) (x^3+x^2-3)/3.0;
for i=2:100
    a(i)=g1(a(i-1));
    iter = i;
    if abs(a(i)-a(i-1))<tol
       break;
    end
end
a'
iter