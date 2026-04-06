function[fdiff,cdiff,bdiff,ferror,cerror,berror] = forwardDiff(f,df,x)
     n = length(x);
     h = x(2)-x(1);

     fdiff=zeros(1,n);
     cdiff =zeros(1,n);
     bdiff = zeros(1,n);
     ferror = zeros(1,n);
     cerror = zeros(1,n);
     berror = zeros(1,n);
    % Forward Difference valid till n-1
     for i = 1:n-1
         fdiff(i) = (f(x(i+1))-f(x(i)))/h;
         ferror(i) = abs(df(x(i))-fdiff(i));
     end
     % Central Difference valid till 2 to n-1

     for i = 2:n-1
         cdiff(i) = (f(x(i+1)) - f(x(i-1)))/(2*h);
         cerror(i) = abs(df(x(i)) - cdiff(i));
     end
    % Backward Difference valid till 2 to n
    for i = 2:n
        bdiff(i) = (f(x(i-1))-f(x(i)))/(-h);
        berror(i) = abs(df(x(i))-bdiff(i));
    end


end

   