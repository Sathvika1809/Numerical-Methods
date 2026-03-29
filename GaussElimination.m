format long
% Gaussian Elimination      
a=0.0;b=0.0;m=0.0;y=0.0;x=0.0;
n=4;
a=[1 -0.5 1 0;2 -1 -1 1;1 1 0 0; 1 -0.5 1 1];
b=[4 5 2 5];

%a = randi(n,n);
%a = 0.5*(a+a.');
%a = a+n*eye(n);
%b = randi(1,1,n);
y = a\b'
%x=a\b'% Real solutions
for k = 1:n-1
    for i = k+1:n
        m(i,k) = a(i,k)/a(k,k);
        a(i,k) = 0.0;
        for j = k+1:n
            a(i,j)=a(i,j)-m(i,k)*a(k,j);
        end
        b(i)= b(i)-m(i,k)*b(k);
    end
end

% Back substitution
x(n) = b(n)/a(n,n);
for i = n-1:-1:1
    sum = 0.0;
    for j = n:-1:i+1
        sum = sum+ a(i,j)*x(j);
    end

    x(i) = (b(i) - sum)/a(i,i);
end
x





