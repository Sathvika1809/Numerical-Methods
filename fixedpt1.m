format long
a(1)=1.0;
tol = 1.0e-07;
g1=@(x) (x^3+x^2-3)/3.0;
for i=2:100
    a(i)=g1(a(i-1));
    iter = i;
    val = a(i)-a(i-1);
    if abs(val)<tol
       break;
    end
end
a'
iter
b = 0.0;
b(1) = 1.0;
tol = 1.0e-07;
g2 = @(x) 3/x +3/(x^2) -1;
for j = 2:100
    b(j) = g2(b(j-1));
    iter = j;
    val = b(j)-b(j-1);
    if abs(val)<tol
        break;
    end
end
b'
iter
c = 0.0;
c(1)=1.0;
tol = 1.0e-07;
g3 = @(x) (3+3*x-x*x)^(1/3);
for k = 2:100
    c(k)=g3(c(k-1));
    iter = k;
    val = c(k)-c(k-1);
    if abs(val)<tol
        break;
    end
end
c'
iter
d = 0.0;
d(1)=1.0;
g4 = @(x) (3+3*x-x*x)^(1/2);
for l = 2:100
     d(l)=g4(d(l-1));
    iter = l;
    val = d(l)-d(l-1);
    if abs(val)<tol
        break;
    end
end
d'
iter
