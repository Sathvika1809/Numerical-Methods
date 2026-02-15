function VectorComp(n)
x=rand(n,1);
y=zeros(n,1);%Preallocation is imp
disp('Regular For Loop\n')
tic
for i = 1:n
    y(i) = (x(i))^2 +2*x(i)+1;
end
toc
%Vector Notation
disp('Vector Notation\n')
tic
y= x.^2 +2.^x+1;
toc
end
