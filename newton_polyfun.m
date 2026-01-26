function[root,iterations] = newton_polyfun(f,df,x0,tol,maxIter)
x=x0;
for i = 1:maxIter
   fx = f(x);
   dfx = df(x);
   if dfx==0
       error('Derivative is zero.Method failed');
   end


   x_new = x - fx/dfx;
   if abs(x_new - x)<tol
       root = x_new;
       iterations=i;
       return;
   end
   x = x_new;
   iterations = i;
end
root = x;
iterations = maxIter;
end