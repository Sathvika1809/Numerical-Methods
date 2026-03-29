clc;
clear;
%for square matrix
a = input('Enter matrix a:');
b = input('Enter matrix b:');
n = length(b);
% Upper Triangular matrix
for i=1:n
    for k=i+1:n
        f = a(k,i)/a(i,i);
        a(k,:)=a(k,:)-f*a(i,:);
        b(k) = b(k)-f*b(i);
    end
end
x = zeros(n,1);
for i = n:-1:1
    x(i)=(b(i)-a(i,i+1:n)* x(i+1:n))/a(i,i);
    fprintf('\n the value of x(%d)=%f',i,x(i));
end


