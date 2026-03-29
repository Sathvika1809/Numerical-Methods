function GaussElimination_vector
A = [2 1 1;3 2 3;1 4 9];
b = [5;11;8];
n = length(b);
Ab = [A b]; %Augmented Matrix
% 1.Forward Elimination
%Taking a row and all cols have same property
for i = 1:n-1
    for j = i+1:n
        factor = Ab(j,i)/Ab(i,i);
        Ab(j,:) = Ab(j,:)-factor * Ab(i,:);  %Vectorised Row Operation
    end
end
x = zeros(n,1);
x(n) = Ab(n,end)/Ab(n,n);
% Back Substitution
for i= n:-1:1
    x(i) = (Ab(i,end) - Ab(i,i+1:n)* x(i+1:n))/Ab(i,i);
end
disp('Solution x:');
disp(x);
end

