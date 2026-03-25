y =@(x) x^6-x-1;
x1 = input('Enter the value of x1: ');
x2 = input('Enter the value of x2: ');
if y(x1)*y(x2)>0
    disp('No roots exist in this given interval');
    return
end
if y(x1)==0
    fprintf('%f is one of the root',x1);
    return
elseif y(x2)==0
    fprintf('%f is one of the root',x2);
    return
else 
    for i = 1:100
        p = (x1+x2)/2;
        if y(x1)*y(p)<0
            x2 = p; % Update x2 to p
        else
            x1 = p;
        end
        if abs(x2-x1)<2*(1.0E-6)
            fprintf('The root is %f\n',p);
            fprintf('No. of iterations: %d\n',i);
            break
        end
    end
end

